import 'package:flutter/material.dart';
import 'package:flutter_elnur/pages/home_screen.dart';
import 'package:flutter_elnur/pages/numbers_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elnur',         
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(), 
      routes: {
        '/home': (context) => HomeScreen(),
        '/numbers': (context) => NumbersScreen(),
      },
    );
  }
}
