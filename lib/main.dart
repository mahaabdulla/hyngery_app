import 'package:flutter/material.dart';
import 'package:hungry_app/features/auth/view/login_view.dart';
import 'package:hungry_app/features/auth/view/singup_view.dart';
import 'package:hungry_app/root.dart';
import 'package:hungry_app/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hungery app',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const Root(),
    );
  }
}
