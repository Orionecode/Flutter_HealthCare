import 'package:BMI_Calc/constants.dart';
import 'package:flutter/material.dart';

class IconFont extends StatelessWidget {
  IconFont({this.icon, this.lable, this.textStyle});
  final IconData icon;
  final String lable;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          lable,
          style: textStyle
        )
      ],
    );
  }
}
