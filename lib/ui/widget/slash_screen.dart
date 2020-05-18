import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _ScratchCatLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("images/logo.jpg");
  }
}

class _SkipButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return OutlineButton(
      textColor: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: () {},
      child: Text(
        "跳过",
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}

class SlashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: <Widget>[
          Center(
            child: _ScratchCatLogo(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _SkipButton(),
          ),
        ],
      ),
      color: Colors.white,
    );
  }
}
