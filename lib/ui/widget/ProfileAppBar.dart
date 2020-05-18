import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  final ImageProvider avatarImage;

  ProfileAppBar(this.avatarImage);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              height: kToolbarHeight,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 200 / 1.7,
              left: MediaQuery.of(context).size.width / 3.5,
              child: Hero(
                tag: "avatar",
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 4.3,
                  backgroundImage: avatarImage,
                ),
              )),
        ],
      ),
    );
  }
}
