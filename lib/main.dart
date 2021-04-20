import 'package:flutter/material.dart';
import 'package:notes_app/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow[600],
      ),
      home: HomeScreen(),
    );
  }
}
