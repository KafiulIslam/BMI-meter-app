import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMImeter());
}

class BMImeter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF0C0F1D),
          accentColor: Color(0xFF0C0F1D),
          scaffoldBackgroundColor: Color(0xFF1C1A2E),
          textTheme: TextTheme(body1: TextStyle(color: Colors.pinkAccent))),
      debugShowCheckedModeBanner: false,
      home: Inputpage(),
    );
  }
}
