// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_web_ui_squid_game/utilis/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: DesktopNavBar(),
      watch: DesktopNavBar(),
      desktop: MobileNavBar(),
      mobile: DesktopNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          Row(
            children: [
              navButton('Home'),
              navButton('About'),
              navButton('Cast'),
              navButton('Trailor')
            ],
          ),
          navLogo(),
        ],
      ),
    ),
  );
}

Widget DesktopNavBar() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          Row(
            children: [
              navButton('Home'),
              navButton('About'),
              navButton('Cast'),
              navButton('Trailor')
            ],
          ),
          navLogo(),
        ],
      ),
    ),
  );
}

Widget navButton(String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    child: TextButton(
      onPressed: () {},
      child: Text(text,
          style: TextStyle(
              color: text == 'Home' ? Colors.red : Colors.white, fontSize: 18)),
    ),
  );
}

Widget navLogo() {
  return Container(
    height: 60,
    width: 180,
    child: Image.asset(netflix),
  );
}