import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_flutter/api/service/account_api.dart';
import 'package:scratch_flutter/bloc/account/account_bloc.dart';
import 'package:scratch_flutter/bloc/api_service/account_api_bloc.dart';

class LogoutListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final accountBloc = BlocProvider.of<AccountBloc>(context);
    return BlocBuilder<AccountApiBloc, AccountApiService>(
      builder: (context, api) => ListTile(
        leading: Icon(Icons.exit_to_app),
        title: Text("退出登录"),
        onTap: () {
          accountBloc.dispatch(Logout(api));
        },
      ),
    );
  }
}
