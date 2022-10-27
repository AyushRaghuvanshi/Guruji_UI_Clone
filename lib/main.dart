import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:guruji/const.dart';
import 'package:guruji/screens/chat.dart';
import 'package:guruji/screens/home.dart';
import 'package:guruji/screens/pages.dart';
import 'package:guruji/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var screens = [Home(), Pages(), Chat(), Profile()];
  int screen_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: (() {
                  setState(() {
                    screen_index = 0;
                  });
                }),
                icon: Icon(Icons.home_outlined)),
            IconButton(
              onPressed: () {
                setState(() {
                  screen_index = 1;
                });
              },
              icon: Icon(Icons.pages_outlined),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    screen_index = 2;
                  });
                },
                icon: Icon(Icons.chat_bubble_outline)),
            IconButton(
              onPressed: () {
                setState(() {
                  screen_index = 3;
                });
              },
              icon: Icon(Icons.account_circle_outlined),
            ),
          ],
        ),
        body: screens[screen_index]);
  }
}
