// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

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
      home: Signup(),
    );
  }
}

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Image.asset("assets/images/signup_top.png"),
              width: 150,
            ),
            Positioned(
              bottom: 0,
              width: 100,
              child: Image.asset("assets/images/main_bottom.png"),
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
                    "Signup",
                    style: TextStyle(
                      fontSize: 33,
                      fontFamily: "Myfont",
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
                    width: 250,
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
                          EdgeInsets.symmetric(horizontal: 90, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      GestureDetector(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: (){Navigator.pushNamed(context, '/login');},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 277,
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 1,
                          color: Colors.purple,
                        )),
                        Text(
                          "OR",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 1,
                          color: Colors.purple,
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.purple, width: 1)),
                          child: SvgPicture.asset(
                            "assets/icons/facebook.svg",
                            color: Colors.purple[700],
                            height: 22,
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.purple, width: 1)),
                          child: SvgPicture.asset(
                            "assets/icons/google-plus.svg",
                            color: Colors.purple[700],
                            height: 22,
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.purple, width: 1)),
                          child: SvgPicture.asset(
                            "assets/icons/twitter.svg",
                            color: Colors.purple[700],
                            height: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
