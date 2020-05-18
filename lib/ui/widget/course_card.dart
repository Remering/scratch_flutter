import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratch_flutter/pojo/course_api.dart';
import 'package:scratch_flutter/ui/page/course_page.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({Key key, @required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.network(course.picture)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    course.name,
                    style: TextStyle(fontSize: 32, color: Colors.yellow),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                course.introduction,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CoursePage(course: course))),
    );
  }
}
