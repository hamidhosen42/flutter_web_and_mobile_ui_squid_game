// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_ui_squid_game/utilis/constants.dart';

import '../widgets/mainContent.dart';
import '../widgets/navBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [
                    Color.fromARGB(255, 13, 233, 148),
                    Color.fromARGB(255, 49, 45, 45),
                  ],
                ),
                color: Color.fromARGB(255, 13, 233, 148),
                image:
                    DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                NavBar(),
                SizedBox(
                  height: 10,
                ),
                MainContent()
              ],
            ),
          ),
        ),
      ),
    );
  }
}