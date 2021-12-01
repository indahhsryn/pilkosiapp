// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';

class CekLogin {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<User?> sigIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      User? user = result.user;

      return user;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return null;
    }
  }
}

class AuthResult {}
