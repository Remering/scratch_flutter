import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_flutter/bloc/register/register_bloc.dart';
import 'package:scratch_flutter/constants.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _RegisterPageBody(),
      ),
    );
  }
}

class _RegisterPageBody extends StatefulWidget {
  @override
  _RegisterPageBodyState createState() => _RegisterPageBodyState();
}

class _RegisterPageBodyState extends State<_RegisterPageBody> {
  final _formKey = GlobalKey<FormState>();

  int role = STUDENT;

  @override
  Widget build(BuildContext context) {
    final RegisterBloc registerBloc = BlocProvider.of<RegisterBloc>(context);
    final RegisterState registerState = registerBloc.currentState;

    TextEditingController usernameTextController =
        TextEditingController(text: registerState.username);
    usernameTextController.addListener(
        () => registerBloc.dispatch(SetUsername(usernameTextController.text)));

    TextEditingController passwordTextController =
        TextEditingController(text: registerState.password);
    passwordTextController.addListener(
        () => registerBloc.dispatch(SetPassword(passwordTextController.text)));

    TextEditingController repeatedPasswordTextController =
        TextEditingController(text: registerState.repeatedPassword);
    repeatedPasswordTextController.addListener(() => registerBloc
        .dispatch(SetRepeatedPassword(repeatedPasswordTextController.text)));

    TextEditingController emailTextController =
        TextEditingController(text: registerState.email);
    emailTextController.addListener(
        () => registerBloc.dispatch(SetEmail(emailTextController.text)));

    TextEditingController verificationCodeTextController =
        TextEditingController(text: registerState.verificationCode);
    verificationCodeTextController.addListener(() => registerBloc
        .dispatch(SetVerificationCode(verificationCodeTextController.text)));

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: usernameTextController,
              maxLength: 18,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle),
                labelText: "用户名",
                hintText: "请输入您的用户名",
              ),
              validator: (username) {
                String validation;
                if (username.isEmpty) {
                  validation = "用户名不能为空";
                } else if (username.length > 18) {
                  validation = "用户名过长";
                }
                return validation;
              },
            ),
            TextFormField(
              obscureText: true,
              controller: passwordTextController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "密码:",
                  hintText: "请输入您的密码"),
              validator: (password) {
                String validation;
                if (password.isEmpty) {
                  validation = "用户名不能为空";
                }
                return validation;
              },
            ),
            TextFormField(
              obscureText: true,
              controller: repeatedPasswordTextController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: "重复密码:",
                hintText: "请重复您的密码",
              ),
              validator: (repeatedPassword) {
                String validation;
                if (registerState.password != repeatedPassword) {
                  validation = "密码和重复密码不一致";
                }
                return validation;
              },
            ),
            TextFormField(
              obscureText: true,
              controller: emailTextController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: "邮箱:",
                hintText: "请输入您的邮箱",
              ),
              validator: (email) {
                String validation;
                if (!RegExp(
                        "^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+\$")
                    .hasMatch(email)) {
                  validation = "邮箱格式不正确";
                }
                return validation;
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 4),
              child: DropdownButtonFormField<int>(
                isDense: true,
                decoration: InputDecoration(
                  labelText: "类型",
                  prefixIcon: Icon(Icons.person),
                ),
                isExpanded: true,
                items: ["学生", "老师"]
                    .asMap()
                    .entries
                    .map((entry) => DropdownMenuItem(
                          value: entry.key,
                          child: Text(entry.value),
                        ))
                    .toList(),
                value: role,
                onChanged: (int role) {
                  registerBloc.dispatch(SetRole(role));
                  setState(() {
                    this.role = role;
                  });
                },
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    controller: verificationCodeTextController,
                    maxLength: 6,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.verified_user),
                      labelText: "验证码",
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: OutlineButton(
                    child: Text("发送验证码"),
                    color: Theme.of(context).primaryColor,
                    textColor: Theme.of(context).primaryColor,
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: RaisedButton(
                      child: Text("注册"),
                      textColor: Colors.white,
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
