import 'package:flutter/material.dart';
import 'package:scratch_flutter/constants.dart';

class _SnackBarContent extends StatelessWidget {
  final String text;

  _SnackBarContent(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
    );
  }
}

void showStateSnackbar(int code, String message, ScaffoldState scaffoldState) {
  final snackbar = SnackBar(
    content: _SnackBarContent(message),
    backgroundColor: COLORS[code],
    action: SnackBarAction(
      label: "关闭",
      onPressed: () => scaffoldState.hideCurrentSnackBar(
          reason: SnackBarClosedReason.action),
    ),
  );
  scaffoldState.showSnackBar(snackbar);
}
