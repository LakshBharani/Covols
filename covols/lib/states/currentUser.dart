import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class CurrentUser extends ChangeNotifier {
  String _uid;
  String _email;

  String get getUid => _uid;

  String get getEmail => _email;

  FirebaseAuth _auth = FirebaseAuth.instance;

  // ignore: missing_return
  Future<String> onStartUp() async {
    // ignore: unused_local_variable
    String retVal = 'error';

    try {
      FirebaseUser _firebaseUser = await _auth.currentUser();
      _uid = _firebaseUser.uid;
      _email = _firebaseUser.email;
      retVal = "success";
    } catch (e) {
      print(e);
    }
  }

  Future<bool> signUpUser(String email, String password) async {
    bool retVal = false;

    try {
      AuthResult _authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (_authResult.user != null) {
        retVal = true;
      }
    } catch (e) {
      retVal = e.message;
    }

    return retVal;
  }

  Future<bool> loginUser(String email, String password) async {
    bool retVal = false;

    try {
      AuthResult _authResult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (_authResult.user != null) {
        _uid = _authResult.user.uid;
        _email = _authResult.user.email;
        retVal = true;
      }
    } catch (e) {
      print(e);
    }

    return retVal;
  }
}
