import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_flutter/bloc/account/account_bloc.dart';
import 'package:scratch_flutter/bloc/account/account_state.dart';
import 'package:scratch_flutter/pojo/profile_api.dart';
import 'package:scratch_flutter/ui/page/login_page.dart';
import 'package:scratch_flutter/ui/page/profile_page.dart';

class _AppDrawerHeader extends StatelessWidget {
  final Profile profile;
  final bool isLogged;

  const _AppDrawerHeader(
      {Key key, @required this.profile, @required this.isLogged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatarUrl = profile.avatarUrl;
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      currentAccountPicture: InkWell(
        child: isLogged
            ? Hero(
                tag: "avatar",
                child: CircleAvatar(
                  backgroundImage: NetworkImage(avatarUrl),
                ),
              )
            : CircleAvatar(
                backgroundImage: AssetImage("images/avatar_default.jpg"),
              ),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => isLogged ? ProfilePage() : LoginPage())),
      ),
      accountName: Text(
        profile.username,
        style: TextStyle(fontSize: 24),
      ),
      accountEmail: Text(isLogged ? profile.email : "点击头像登录"),
    );
  }
}

class AppDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) => _AppDrawerHeader(
        profile: state.profile,
        isLogged: state.isLogged,
      ),
    );
  }
}
