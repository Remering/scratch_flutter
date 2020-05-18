import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_flutter/bloc/account/account_bloc.dart';
import 'package:scratch_flutter/bloc/account/account_event.dart';
import 'package:scratch_flutter/bloc/api_service/account_api_bloc.dart';
import 'package:scratch_flutter/bloc/api_service/profile_api_service.dart';
import 'package:scratch_flutter/bloc/login/login_bloc.dart';
import 'package:scratch_flutter/bloc/login/login_event.dart';
import 'package:scratch_flutter/constants.dart';
import 'package:scratch_flutter/pojo/account_api.dart';
import 'package:scratch_flutter/ui/page/register_page.dart';
import 'package:scratch_flutter/ui/snackbar_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body:
          Padding(padding: const EdgeInsets.all(8.0), child: _LoginPageBody()),
    );
  }
}

class _LoginPageBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final LoginBloc loginBloc = BlocProvider.of<LoginBloc>(context);
    final LoginState loginState = loginBloc.currentState;
    final AccountBloc accountBloc = BlocProvider.of<AccountBloc>(context);
    final accountApiService =
        BlocProvider.of<AccountApiBloc>(context).currentState;
    final accountTextController =
        TextEditingController(text: loginState.account);
    final ProfileApiBloc profileApiService =
        BlocProvider.of<ProfileApiBloc>(context);

    accountTextController.addListener(
        () => loginBloc.dispatch(SetAccount(accountTextController.text)));
    final passwordTextController =
        TextEditingController(text: loginState.account);
    passwordTextController.addListener(
        () => loginBloc.dispatch(SetPassword(passwordTextController.text)));

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: accountTextController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_circle),
              labelText: "账号(邮箱):",
              hintText: "请输入您的账号(邮箱)",
            ),
            validator: (account) {
              String validation;
              if (account.isEmpty) {
                validation = "账号(邮箱)不能为空";
              }
              return validation;
            },
          ),
          TextFormField(
            controller: passwordTextController,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: "密码:",
              hintText: "请输入您的密码",
            ),
            validator: (password) {
              String validation;
              if (password.isEmpty) {
                validation = "密码不能为空";
              }
              return validation;
            },
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: RaisedButton(
                    child: Text("登录"),
                    textColor: Colors.white,
                    color: Theme.of(context).primaryColor,
                    onPressed: () async {
                      if (!_formKey.currentState.validate()) return;

                      final LoginRequestBodyBuilder requestBodyBuilder =
                          LoginRequestBodyBuilder();
                      requestBodyBuilder.account = loginState.account;
                      requestBodyBuilder.password = sha256
                          .convert(utf8.encode(loginState.password))
                          .toString();

                      final response = await accountApiService
                          .login(requestBodyBuilder.build());

                      if (response.body.code == SUCCESS) {
                        final sharedPreference =
                            await SharedPreferences.getInstance();
                        sharedPreference.setString(
                            JWT_KEY, response.body.token);
                        accountBloc.dispatch(SetToken(response.body.token,
                            profileApiService.currentState));
                        Navigator.of(context).pop();
                      }
                      showStateSnackbar(response.body.code,
                          response.body.message, Scaffold.of(context));
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: OutlineButton(
                    child: Text("注册"),
                    color: Theme.of(context).primaryColor,
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                    textColor: Theme.of(context).primaryColor,
                    onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext context) => RegisterPage())),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
