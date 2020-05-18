import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_flutter/api/service/course_api.dart';
import 'package:scratch_flutter/bloc/api_service/course_api_bloc.dart';
import 'package:scratch_flutter/bloc/course/course_bloc.dart';
import 'package:scratch_flutter/pojo/course_api.dart';
import 'package:scratch_flutter/ui/widget/course_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CourseBloc courseBloc = BlocProvider.of<CourseBloc>(context);
    return BlocBuilder<CourseApiBloc, CourseApiService>(
      builder: (context, service) =>
          FutureBuilder<Response<GetCourseResponseBody>>(
        future: service.getCourses().then((response) {
          if (response.body?.courses != null)
            courseBloc.dispatch(SetCourses(response.body.courses.asMap()));
          return Future.value(response);
        }),
        builder: (context, snapshot) => snapshot.hasData &&
                snapshot.data.body?.courses != null
            ? ListView(
                children: snapshot.data.body.courses.values
                    .map((course) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: CourseCard(
                            course: course,
                          ),
                        ))
                    .toList(),
                padding: const EdgeInsets.all(8),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
