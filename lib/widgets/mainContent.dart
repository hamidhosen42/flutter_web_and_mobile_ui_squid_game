// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utilis/constants.dart';
import 'navBar.dart';

class MainContent extends StatefulWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return ScreenTypeLayout(
      mobile: MobileMainContent(h, w),
      desktop: DesktopMainContent(),
    );
  }
}

Widget MobileMainContent(double? h, double? w) {
  return Expanded(
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: w! - 200, child: Image.asset(squid)),
          SizedBox(
            height: 20,
          ),
          Container(width: w, child: Image.asset(squid_game)),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(figures),
                SizedBox(
                  width: 20,
                ),
                Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(
                        'Life is like a game, there are many players. \nIf you don’t play with them, they’ll play with you...',
                        style: TextStyle(fontSize: w / 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.trending_up,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Trending  #1',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )
                        ],
                      )
                    ]))
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            height: 42,
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(40),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffE50914))),
                onPressed: () {},
                child: Text(
                  'Continue Watching',
                  style: TextStyle(letterSpacing: 1.2, fontSize: 19),
                )),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              navButton('S1'),
              navButton('E9'),
              navButton('2021'),
              Image.asset(imdb),
              navButton('8.2')
            ],
          ),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    ),
  );
}

Widget DesktopMainContent() {
  return Expanded(
      child: Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: Image.asset(squid_game)),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(figures),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              'Life is like a game, there are many players. \nIf you don’t play with them, they’ll play with you...',
                              style: TextStyle(fontSize: w! / 70),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.trending_up,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Trending  #1',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: w! / 70),
                                )
                              ],
                            )
                          ]))
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  height: 42,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(40),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffE50914))),
                      onPressed: () {},
                      child: Text(
                        'Continue Watching',
                        style: TextStyle(letterSpacing: 1.2, fontSize: 19),
                      )),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    navButton('S1'),
                    navButton('E9'),
                    navButton('2021'),
                    Image.asset(imdb),
                    navButton('8.2')
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(child: Image.asset(squid)),
        )
      ],
    ),
  ));
}