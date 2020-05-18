import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_flutter/bloc/account/account_bloc.dart';
import 'package:scratch_flutter/bloc/account/account_state.dart';
import 'package:scratch_flutter/ui/widget/drawer/app_drawer_header.dart';
import 'package:scratch_flutter/ui/widget/drawer/feedback_list_tile.dart';
import 'package:scratch_flutter/ui/widget/drawer/login_list_tile.dart';
import 'package:scratch_flutter/ui/widget/drawer/logout_list_tile.dart';
import 'package:scratch_flutter/ui/widget/drawer/profile_list_tile.dart';

class _AppDrawer extends StatelessWidget {
  final bool isLogged;

  const _AppDrawer({Key key, @required this.isLogged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
          context: context,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _columnChildren,
          )),
    );
  }

  List<Widget> get _columnChildren => [
        AppDrawerHeader(),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ProfileListTile(
                isLogged: isLogged,
              ),
              FeedbackListTile(
                isLogged: isLogged,
              ),
            ],
          ),
        ),
        isLogged ? LogoutListTile() : LoginListTile()
      ];
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) => _AppDrawer(
        isLogged: state.isLogged,
      ),
    );
  }
}
