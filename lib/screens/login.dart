// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Scaffold(
          body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Image.asset("assets/images/main_top.png"),
              width: 150,
            ),
            Positioned(
              left: 250,
              bottom: 0,
              width: 100,
              child: Image.asset("assets/images/login_bottom.png"),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 33,
                      fontFamily: "Myfont",
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SvgPicture.asset(
                    "assets/icons/login.svg",
                    width: 288,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Colors.purple[800],
                          ),
                          hintText: "Your Email :",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          suffix: Icon(
                            Icons.visibility,
                            color: Colors.purple[900],
                          ),
                          icon: Icon(
                            Icons.lock,
                            color: Colors.purple[800],
                            size: 19,
                          ),
                          hintText: "Password :",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "login",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: (){Navigator.pushNamed(context, '/signup');},
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    ));
  }
}
