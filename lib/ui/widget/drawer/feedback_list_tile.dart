import 'package:flutter/material.dart';
import 'package:scratch_flutter/ui/page/feedback_page.dart';
import 'package:scratch_flutter/ui/page/login_page.dart';

class FeedbackListTile extends StatelessWidget {
  final bool isLogged;

  const FeedbackListTile({Key key, @required this.isLogged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.feedback),
      title: Text("反馈"),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => isLogged ? FeedbackPage() : LoginPage()));
      },
    );
  }
}
