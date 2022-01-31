import 'package:flutter/material.dart';
import 'package:gather/Screens/login.dart';

import 'Screens/filter_screen.dart';
import 'Screens/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home:  LoginScreen(),
    );
  }
}

