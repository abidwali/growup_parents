// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:growup_parents/screens/add_child/child_screen1.dart';
import 'package:growup_parents/screens/intro/intro_screen.dart';
import 'package:growup_parents/screens/login_signup/loginscreen.dart';
import 'package:growup_parents/screens/test.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff4A2A51),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GrowUpp Parents',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: const ChildScreenOne());
        //home: const TestWidgets());
        home: const IntroScreen());
  }
}
