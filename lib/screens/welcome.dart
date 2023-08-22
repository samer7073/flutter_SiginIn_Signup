// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

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
      home: Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
          body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Image.asset("assets/images/main_top.png"),
              width: 100,
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
                    "Welcome",
                    style: TextStyle(
                      fontSize: 33,
                      fontFamily: "Myfont",
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SvgPicture.asset(
                    "assets/icons/chat.svg",
                    width: 288,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "login",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[100]),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
