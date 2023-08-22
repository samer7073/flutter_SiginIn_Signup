import 'package:flutter/material.dart';
import 'package:flutter_application_login_signup_project/screens/login.dart';
import 'package:flutter_application_login_signup_project/screens/signup.dart';
import 'package:flutter_application_login_signup_project/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
      },
    );
  }
}
