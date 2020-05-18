import 'package:auto_orientation/auto_orientation.dart';
import 'package:chewie/chewie.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_flutter/api/service/question_api.dart';
import 'package:scratch_flutter/bloc/api_service/question_api_bloc.dart';
import 'package:scratch_flutter/pojo/course_api.dart';
import 'package:scratch_flutter/pojo/question_api.dart';
import 'package:scratch_flutter/ui/widget/add_question_widget.dart';
import 'package:scratch_flutter/ui/widget/question/question_list.dart';
import 'package:video_player/video_player.dart';

class CoursePage extends StatelessWidget {
  final Course course;

  const CoursePage({Key key, @required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("课程"),
      ),
      body: _CoursePageBody(course: course),
    );
  }
}

class _CoursePageBody extends StatefulWidget {
  final Course course;

  _CoursePageBody({
    Key key,
    @required this.course,
  }) : super(key: key);

  @override
  _CoursePageBodyState createState() => _CoursePageBodyState();
}

class _CoursePageBodyState extends State<_CoursePageBody> {
  ChewieController _controller;
  VideoPlayerController _videoPlayerController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Card(
              child: Column(
            children: <Widget>[
              Chewie(controller: _controller),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(widget.course.teacher.avatarUrl),
                ),
                title: Text(widget.course.teacher.username),
                trailing: RaisedButton(
                  child: Text(
                    "下载课件",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(widget.course.name),
                  subtitle: Text(widget.course.introduction),
                ),
              )
            ],
          )),
          AddQuestionWidget(),
          BlocBuilder<QuestionApiBloc, QuestionApiService>(
              builder: (context, api) =>
                  FutureBuilder<Response<GetQuestionsResponseBody>>(
                    future: api.getQuestions(widget.course.uuid),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        if (snapshot.hasError) {
                          print("加载问题失败${snapshot.error}");
                          return Text("加载失败");
                        } else {
                          return CircularProgressIndicator();
                        }
                      }

                      final responseBody = snapshot.data.body;
                      final questions =
                          responseBody.questions?.toMap() ?? Map();
                      return QuestionList(
                        questions: questions.values.toList(),
                        teacher: widget.course.teacher,
                      );
                    },
                  ))
        ],
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(widget.course.video);
    _controller = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: 4.0 / 3,
        autoPlay: false,
        autoInitialize: true,
        showControls: true,
        routePageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondAnimation, provider) {
          return AnimatedBuilder(
            animation: animation,
            builder: (BuildContext context, Widget child) {
              return _VideoScaffold(
                child: Scaffold(
                  resizeToAvoidBottomPadding: false,
                  body: Container(
                    alignment: Alignment.center,
                    color: Colors.black,
                    child: provider,
                  ),
                ),
              );
            },
          );
        });
  }
}

class _VideoScaffold extends StatefulWidget {
  const _VideoScaffold({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  State<StatefulWidget> createState() => _VideoScaffoldState();
}

class _VideoScaffoldState extends State<_VideoScaffold> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    AutoOrientation.landscapeAutoMode();
    super.initState();
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    AutoOrientation.portraitAutoMode();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
