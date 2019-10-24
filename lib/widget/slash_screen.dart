import 'package:flutter/material.dart';

class _ScratchCatLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.asset("images/logo.png");
  }

}

class SlashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: _ScratchCatLogo(),
        )
      ],
    );
  }

}