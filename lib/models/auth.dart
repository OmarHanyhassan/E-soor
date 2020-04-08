import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Firestore _firestore = Firestore.instance;
  String _email, _password;
  bool _isLoggedIn = false;

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
    _isLoggedIn = true;
    return null;
  }

  Future<String> loginUser(data) async {
    print(data);
    _password = data.password;
    _email = data.name;
    try{
      await _auth.signInWithEmailAndPassword(email: _email, password: _password);
    }
    catch(err){
      return null;
    }
    _isLoggedIn = true;
    return null;
  }

  Future<String> recoverPassword(String email) async {
    _isLoggedIn = false;
    await _auth.sendPasswordResetEmail(email: email);
    return null;
  }

  Future<void> logOut() async {
    _isLoggedIn = false;
    await _auth.signOut();
    return null;
  }

  bool isLoggedIn() {
    if (_isLoggedIn == true) {
      return true;
    } else {
      return false;
    }
  }
}
