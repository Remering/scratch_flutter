import 'package:auto_orientation/auto_orientation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:scratch_flutter/bloc/account/account_event.dart';
import 'package:scratch_flutter/bloc/providers.dart';
import 'package:scratch_flutter/constants.dart';
import 'package:scratch_flutter/ui/widget/main_scaffold.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bloc/account/account_bloc.dart';
import 'bloc/api_service/profile_api_service.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print("[${record.time}]${record.level}: ${record.message}");
  });

  runApp(MultiBlocProvider(
    child: App(),
    providers: providers,
  ));
  AutoOrientation.portraitAutoMode();
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    theme = theme.copyWith(primaryColor: Colors.orange);

    return MaterialApp(
      home: FutureBuilder<SharedPreferences>(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final token = snapshot.data.getString(JWT_KEY);
            if (token == null) return MainScaffold();
            final accountBloc = BlocProvider.of<AccountBloc>(context);
            final profileApiBloc = BlocProvider.of<ProfileApiBloc>(context);
            accountBloc.dispatch(SetToken(token, profileApiBloc.currentState));
          }
          return MainScaffold();
        },
      ),
      theme: theme,
    );
  }

}