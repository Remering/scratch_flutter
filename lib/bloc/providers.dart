import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'account/account_bloc.dart';
import 'api_service/account_api_bloc.dart';
import 'api_service/course_api_bloc.dart';
import 'api_service/profile_api_service.dart';
import 'api_service/question_api_bloc.dart';
import 'course/course_bloc.dart';
import 'login/login_bloc.dart';
import 'register/register_bloc.dart';

final List<BlocProvider<Bloc<dynamic, dynamic>>> providers = [
  BlocProvider<LoginBloc>.value(value: LoginBloc()),
  BlocProvider<RegisterBloc>.value(value: RegisterBloc()),
  BlocProvider<AccountBloc>.value(value: AccountBloc()),
  BlocProvider<CourseBloc>.value(value: CourseBloc()),
  BlocProvider<AccountApiBloc>.value(value: AccountApiBloc()),
  BlocProvider<ProfileApiBloc>.value(value: ProfileApiBloc()),
  BlocProvider<CourseApiBloc>.value(value: CourseApiBloc()),
  BlocProvider<QuestionApiBloc>.value(value: QuestionApiBloc()),
];
