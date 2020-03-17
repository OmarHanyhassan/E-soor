import 'package:E_Soor/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:E_Soor/services/api.dart' as api;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart';

get users async{
  return await api.getUsers();
}

bool isloggedIn = false;

class LoginPage extends StatelessWidget {
	
	Duration get loginTime => Duration(milliseconds: 1800);

	Future<String> _authUserLogin(LoginData data) {
    getUserPrefs();
    print('Email: ${data.email}, Password: ${data.password}');
    //users.then(print(users));
  	Future.delayed(loginTime).then((_) async {
      if (! (users).contains(data.email)) {
        return 'Username not exists';
      } else {
        isloggedIn = true;
      }
      return null;
			
		});
	}

  // TODO: Revising the function
  Future<String> _authUserSignup(LoginData data) {
    print('Email: ${data.email}, Password: ${data.password}');
    saveUserPrefs(data.email, data.password);
  	Future.delayed(loginTime).then((_) async {
      post(
        api.User(
          name: data.email,
          password: data.password 
        )
      );
      print(users);
      return null;
			
		});
	}

  Future saveUserPrefs(String name, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('user', [name, password]);
  }

  Future<List<String>> getUserPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> userPrefs = prefs.getStringList('user');
    return userPrefs;
  }

  Future<String> getNamePrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = prefs.getString('name');
    return name;
  }
	
	Future<String> _recoverPassword(String name) {
		print('Name: $name');
    getNamePrefs();
		return Future.delayed(loginTime).then((_) async {
			if (! (users).contains(name)) {
        return 'Username not exists';
      }
      return null;
		});
	}
	
	@override
	Widget build(BuildContext context) {
		return FlutterLogin(
			logo: 'images/logo.png',
			onLogin: _authUserLogin,
			onSignup: _authUserSignup,
			onSubmitAnimationCompleted: () {
				Navigator.of(context).pushReplacement(MaterialPageRoute(
					builder: (context) => MyHomePage(),
				));
			},
			onRecoverPassword: _recoverPassword,
			messages: LoginMessages(
				usernameHint: 'Email',
				passwordHint: 'Password',
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
}
