import 'package:flutter/material.dart';
import 'package:scratch_flutter/ui/page/profile_page.dart';

class ProfileListTile extends StatelessWidget {
  final bool isLogged;

  const ProfileListTile({Key key, @required this.isLogged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.account_box),
      title: Text("个人资料"),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProfilePage()));
      },
    );
  }
}
