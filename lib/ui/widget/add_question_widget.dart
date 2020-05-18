import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_flutter/bloc/account/account_bloc.dart';
import 'package:scratch_flutter/bloc/account/account_state.dart';

class AddQuestionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<AccountBloc, AccountState>(
                builder: (context, state) => state.isLogged
                    ? _LoggedAddQuestionWidget()
                    : _AddQuestionWidget(),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _AddQuestionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "登录后才能提问哦",
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }
}

class _LoggedAddQuestionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "向老师提问",
          suffixIcon: IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
          )),
    );
  }
}
