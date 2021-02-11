import 'package:flutter/material.dart';
import 'package:BMI_Calc/constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.onTap, @required this.buttonTittle});
  final Function onTap;
  final String buttonTittle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTittle,
            style: kButtomLableTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 5.0),
        padding: EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
