import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratch_flutter/constants.dart';
import 'package:scratch_flutter/ui/snackbar_util.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提交反馈"),
      ),
      body: _FeedbackPageBody(),
    );
  }
}

class _FeedbackPageBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Expanded(
              child: TextFormField(
                maxLines: null,
                minLines: null,
                expands: true,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(hintText: "请输入您的反馈"),
                validator: (feedback) {
                  String validation;
                  if (feedback.isEmpty) {
                    validation = "反馈不能为空";
                  }
                  return validation;
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                child: Text("提交反馈"),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () {
                  if (_formKey.currentState.validate())
                    showStateSnackbar(
                        SUCCESS, "反馈成功，谢谢您的使用", Scaffold.of(context));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
