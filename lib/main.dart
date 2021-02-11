import 'package:flutter/material.dart';
import 'package:BMI_Calc/screens/bmiScreen.dart';
import 'package:BMI_Calc/screens/mainScreen.dart';

void main() => runApp(BMIcalc());

class BMIcalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "健康计算器",
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

