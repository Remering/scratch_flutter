import 'package:flutter/material.dart';
import 'package:scratch_flutter/pojo/course_api.dart';
import 'package:scratch_flutter/pojo/question_api.dart';

class QuestionList extends StatefulWidget {
  final List<Question> questions;
  final UserWithAvatar teacher;

  const QuestionList(
      {Key key, @required this.questions, @required this.teacher})
      : super(key: key);

  @override
  _QuestionListState createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  int index;

  String _convertDateTime(DateTime dateTime) {
    return "${dateTime.year}-${dateTime.month}-${dateTime.day} ${dateTime.hour}:${dateTime.minute}:${dateTime.second}";
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ExpansionPanelList(
        expansionCallback: (index, bool) {
          print('$index: $bool');
          setState(() {
            if (!bool)
              this.index = index;
            else
              this.index = -1;
          });
        },
        children: widget.questions
            .asMap()
            .map((index, question) {
              final panel = ExpansionPanel(
                  canTapOnHeader: false,
                  isExpanded: index == this.index,
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(question.issuer.avatarUrl),
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(question.issuer.username),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            _convertDateTime(
                                DateTime.fromMillisecondsSinceEpoch(
                                    question.issueAt)),
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          )
                        ],
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(question.text),
                      ),
                    );
                  },
                  body: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(widget.teacher.avatarUrl),
                    ),
                    title: Row(
                      children: <Widget>[
                        Text(widget.teacher.username),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          _convertDateTime(DateTime.fromMillisecondsSinceEpoch(
                              question.answerAt)),
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(question.answer),
                    ),
                  ));

              return MapEntry(index, panel);
            })
            .values
            .toList(),
      ),
    );
  }
}
