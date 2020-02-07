import 'package:E_Soor/main.dart';
import 'package:E_Soor/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:firebase_database/firebase_database.dart';

const users = const {
	'OmarYehiaDev@e-soor.com': '123456',
	'AhmedTarek@e-soor.com': '123456',
};

class LoginPage extends StatelessWidget {
	
	final databaseReference = FirebaseDatabase.instance.reference();
	final AuthService _authService = AuthService();
	
	Duration get loginTime => Duration(milliseconds: 1800);

	Future<String> _authUser(LoginData data) {
//		dynamic result = _authService.signInAnon();
//		if (result = null) {
//			print("Error signing in");
//		} else {
//			print("signed in");
//			print(result);
//		}
		/*createRecord();*/
		print('Name: ${data.name}, Password: ${data.password}');
		return Future.delayed(loginTime).then((_) {
			if (!users.containsKey(data.name)) {
				return 'Username not exists';
			}
			if (users[data.name] != data.password) {
				return 'Password does not match';
			}
			return null;
		});
	}
	
	Future<String> _recoverPassword(String name) {
		print('Name: $name');
		return Future.delayed(loginTime).then((_) {
			if (!users.containsKey(name)) {
				return 'Username not exists';
			}
			return null;
		});
	}
	
	@override
	Widget build(BuildContext context) {
		return FlutterLogin(
			logo: 'images/logo.png',
			onLogin: _authUser,
			onSignup: _authUser,
			onSubmitAnimationCompleted: () {
				Navigator.of(context).pushReplacement(MaterialPageRoute(
					builder: (context) => MyHomePage(),
				));
			},
			onRecoverPassword: _recoverPassword,
			messages: LoginMessages(
				usernameHint: 'Email',
				passwordHint: 'Password',
				confirmPasswordHint: 'Write password again',
				loginButton: 'LOG IN',
				signupButton: 'REGISTER',
				forgotPasswordButton: 'Forgot password ?',
				recoverPasswordButton: 'HELP ME',
				goBackButton: 'GO BACK',
				confirmPasswordError: 'Not match!',
				recoverPasswordDescription:
				'Write your email to find your account',
				recoverPasswordSuccess: 'Password rescued successfully',
			),
			theme: LoginTheme(
				primaryColor: Color.fromRGBO(35, 35, 35, 100),
				accentColor: Colors.white,
				buttonTheme: LoginButtonTheme(
					splashColor: Colors.green,
					backgroundColor: Colors.grey,
				),
				textFieldStyle: TextStyle(
					color: Colors.white,
				),
				inputTheme: InputDecorationTheme(
					filled: true,
					fillColor: Colors.black87,
					contentPadding: EdgeInsets.zero,
					errorStyle: TextStyle(
						backgroundColor: Colors.red.withOpacity(.7),
						color: Colors.white,
					),
					focusedBorder: OutlineInputBorder(
						borderSide: BorderSide(color: Colors.white, width: 2),
						borderRadius: BorderRadius.circular(100),
					),
					labelStyle: TextStyle(
						color: Colors.white
					),
				),
			),
		);
	}
	
	void createRecord() {
		databaseReference.child("1").set({
			'title': 'First Try',
			'description': 'Hello World #1',
		});
		databaseReference.child("2").set({
			'title': 'Second Try',
			'description': 'Hello World #2',
		});
		databaseReference.child("3").set({
			'title': 'Third Try',
			'description': 'Hello World #3',
		});
	}
}
