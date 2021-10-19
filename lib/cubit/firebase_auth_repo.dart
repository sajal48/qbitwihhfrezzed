import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class FirebaseBaseRepo {
  Stream<User?> get authStateChanges;
  Future<void> signInAnnonymously();
  User? getCurrentUser();
  Future<void> signOut();
}

class FireBaseAuthRepo extends FirebaseBaseRepo {
  final FirebaseAuth? firebaseAuth;
  FireBaseAuthRepo({this.firebaseAuth});
  @override
  Stream<User?> get authStateChanges => firebaseAuth!.authStateChanges();

  @override
  Future<void> signInAnnonymously() async {
    await firebaseAuth!.signInAnonymously();
  }

  @override
  User? getCurrentUser() {
    firebaseAuth!.currentUser;
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth!.signOut();
    await signInAnnonymously();
  }
}
