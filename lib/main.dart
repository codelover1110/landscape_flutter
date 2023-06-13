import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tlevents/pages/dashboard.dart';
import 'package:tlevents/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetCupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'TLE',
      home: Dashboard(),
    );
  }
}
