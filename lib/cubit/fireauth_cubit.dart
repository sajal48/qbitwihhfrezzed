import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'firebase_auth_repo.dart';

part 'fireauth_state.dart';
part 'fireauth_cubit.freezed.dart';

class FireauthCubit extends Cubit<FireauthState> {
  final FireBaseAuthRepo? fireBaseAuthRepo;

  StreamSubscription<User?>? _authStateChangesSubscription;
  FireauthCubit({this.fireBaseAuthRepo}) : super(FireauthState.initial()) {
    //_authStateChangesSubscription!.cancel();
    _authStateChangesSubscription =
        fireBaseAuthRepo!.firebaseAuth!.authStateChanges().listen((user) {
      if (user == null) {
        emit(_SignedOut());
        SignIn();
      } else if (user != null) {
        emit(_SignedIn());
      }
    });
  }

  Future<void> SignIn() async {
    emit(_Loading());
    try {
      await fireBaseAuthRepo!.signInAnnonymously();
    } on FirebaseAuthException catch (e) {
      emit(_AnyErrorState(e.message!));
    }
  }

  Future<void> SignOut() async {
    emit(_Loading());
    try {
      await fireBaseAuthRepo!.signOut();
      emit(_SignedOut());
    } on FirebaseAuthException catch (e) {
      emit(_AnyErrorState(e.message!));
    }
  }
}
