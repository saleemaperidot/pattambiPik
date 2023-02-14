import 'package:flutter/material.dart';

import 'package:pikit/presentation/home.dart';
import 'package:pikit/presentation/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pikit',
      theme: ThemeData(
          //primarySwatch: Colors.,
          //appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          // backgroundColor: Colors.grey[100],
          ),
      home: const SplashScreen(),
    );
  }
}
