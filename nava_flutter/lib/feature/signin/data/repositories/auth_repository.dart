import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/error/sign_email_senha_failure.dart';

class AuthRepository {
  final _firebaseAuth = firebase_auth.FirebaseAuth.instance;

  AuthRepository() {
     _authchechekd();

  }

    _authchechekd() {

    _firebaseAuth.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  // Future<void> signUp({required String email, required String password}) async {
  //   try {
  //     await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(email: email, password: password);
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       throw Exception('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       throw Exception('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     throw Exception(e.toString());
  //   }
  // }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignEmailSenhaFailure.fromCode(e.code);

    }catch (_){
      throw const SignEmailSenhaFailure();
    }

  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }
}
