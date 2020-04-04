import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Firestore _firestore = Firestore.instance;

  String _email, _password;

  Future<String> registerUser(data) async {
    print(data);
    _password = data.password;
    _email = data.name;
    await _auth.createUserWithEmailAndPassword(
        email: _email, password: _password);
    await _firestore.collection('users').add({
      'user': _email,
      'pass': _password,
    });
    return null;
  }

  Future<String> loginUser(data) async {
    print(data);
    _password = data.password;
    _email = data.name;
    await _auth.signInWithEmailAndPassword(email: _email, password: _password);
    return null;
  }

  Future<String> recoverPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
    return null;
  }

  Future<void> logOut() async {
    await _auth.signOut();
    return null;
  }
}
