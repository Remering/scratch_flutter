import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_flutter/bloc/account/account_bloc.dart';
import 'package:scratch_flutter/pojo/profile_api.dart';
import 'package:scratch_flutter/ui/widget/ProfileAppBar.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) => _ProfilePage(
        profile: state.profile,
      ),
    );
  }
}

class _ProfilePage extends StatelessWidget {
  final Profile profile;

  const _ProfilePage({Key key, this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          children: <Widget>[
            ProfileAppBar(NetworkImage(profile.avatarUrl)),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text(profile.username),
                    subtitle: Text("用户名"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text(profile.email),
                    subtitle: Text("邮箱"),
                  ),
                  ListTile(
                    leading: Icon(Icons.face),
                    title: Text(["学生", "老师"][profile.role]),
                    subtitle: Text("类型"),
                  ),
                  Row(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            "修改头像",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
