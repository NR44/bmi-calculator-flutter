import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  Color blueishBlack = Color(0xFF0A0E21);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: blueishBlack,
        ),
        primaryColor: blueishBlack,
        scaffoldBackgroundColor: blueishBlack,
      ),
      home: InputPage(),
    );
  }
}
