import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qbitwihhfrezzed/cubit/fireauth_cubit.dart';
import 'package:qbitwihhfrezzed/cubit/fireauth_cubit.dart';

import 'cubit/fireauth_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<FireauthCubit, FireauthState>(
      listener: (context, state) {
        if (state == FireauthState.signedOut()) {
          context.read<FireauthCubit>().fireBaseAuthRepo!.signInAnnonymously();
        }
      },
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              "Login",
            ),
            centerTitle: true,
            leading: IconButton(
                onPressed: () => context.read<FireauthCubit>().SignOut(),
                icon: const Icon(Icons.logout_rounded))),
        body: BlocConsumer<FireauthCubit, FireauthState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state == FireauthState.loading()) {
              return Center(child: CircularProgressIndicator.adaptive());
            } else if (state == FireauthState.signedIn()) {
              return Center(child: Text("Logged in"));
            } else if (state == FireauthState.signedOut()) {
              return Center(child: Text("Logged out"));
            } else if (state == FireauthState) {
              return Center(child: Text("Logged out"));
            } else
              return Container();
          },
        ),
      ),
    );
  }
}
