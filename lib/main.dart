// import 'dart:html';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga/welcome_page.dart';

const d_red = Color(0xFFE9717D);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Yoga App",
      home: WelcomePage(),
    );
  }
}
