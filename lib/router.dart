import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qbitwihhfrezzed/splash.dart';

import 'cubit/fireauth_cubit.dart';
import 'cubit/firebase_auth_repo.dart';
import 'login.dart';

class AppRouter {
  late FireBaseAuthRepo repo;

  AppRouter({
    required this.repo,
  }) : super();

  Route genarateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => BlocProvider<FireauthCubit>(
            create: (context) => FireauthCubit(fireBaseAuthRepo: repo),
            child: LoginScreen(),
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
