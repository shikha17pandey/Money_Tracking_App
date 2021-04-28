import 'package:flutter/material.dart';
import 'package:money_tracking_app/welcome.dart';
import 'homepage.dart';
//import 'package:awesome_card/awesome_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black),
        ),
      ),
      home: welcome(),
    );
  }
}
