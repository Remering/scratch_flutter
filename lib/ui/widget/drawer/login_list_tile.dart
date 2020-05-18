import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratch_flutter/ui/page/login_page.dart';
import 'package:scratch_flutter/ui/page/register_page.dart';

class LoginListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              child: Text("登录"),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginPage())),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: OutlineButton(
              child: Text("注册"),
              color: Theme.of(context).primaryColor,
              textColor: Theme.of(context).primaryColor,
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegisterPage())),
            ),
          ),
        ],
      ),
    );
  }
}
