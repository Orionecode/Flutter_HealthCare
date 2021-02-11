import 'package:BMI_Calc/components/iconContent.dart';
import 'package:BMI_Calc/components/roundButton.dart';
import 'package:flutter/material.dart';
import 'package:BMI_Calc/components/resusableCard.dart';
import 'package:BMI_Calc/constants.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:BMI_Calc/components/buttomButton.dart';
import 'package:BMI_Calc/screens/resultScreen.dart';
import 'package:BMI_Calc/calcArea.dart';

enum Gender {
  male,
  female,
}

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Gender selctedGender;
  var height = 160;
  var weight = 50;
  var age = 20;
  var waist = 60;
  @override
  Widget build(BuildContext contextm) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPressed: () {
                    setState(() {
                      selctedGender = Gender.male;
                    });
                  },
                  color: selctedGender == Gender.male
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: IconFont(
                    icon: FontAwesomeIcons.mars,
                    lable: '男生',
                    textStyle: selctedGender == Gender.male
                        ? kSelctedTextStyle
                        : kLabelTextStyle,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPressed: () {
                    setState(() {
                      selctedGender = Gender.female;
                    });
                  },
                  color: selctedGender == Gender.female
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: IconFont(
                    icon: FontAwesomeIcons.venus,
                    lable: '女生',
                    textStyle: selctedGender == Gender.female
                        ? kSelctedTextStyle
                        : kLabelTextStyle,
                  ),
                ),
              )
            ],
          )),
          Expanded(
            child: ReusableCard(
              color: kInactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '身高',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kNumberTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 15.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kInactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '腰围',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        waist.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kNumberTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 15.0),
                      ),
                      child: Slider(
                        value: waist.toDouble(),
                        min: 40.0,
                        max: 100.0,
                        onChanged: (double newValue) {
                          setState(() {
                            waist = newValue.round();
                          });
                        },
                      ))
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  color: kInactiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround, //控制竖直方向的排列方式
                    children: <Widget>[
                      Text(
                        '体重',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          SizedBox(
                            width: 5.0,
                          ), //让体重和kg单位分开
                          Text(
                            'kg',
                            style: kUnitTextStyle,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                if (weight > 0) weight--;
                              });
                            },
                          ),
                          SizedBox(
                            //给两个按钮留出一点空间
                            width: 10.0,
                          ),
                          RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              })
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: kInactiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        '年龄',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          SizedBox(
                            width: 5.0,
                          ), //让年龄数值和单位分开
                          Text(
                            '岁',
                            style: kUnitTextStyle,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                if (age > 0) age--;
                              });
                            },
                          ),
                          SizedBox(
                            //给两个按钮留出一点空间
                            width: 10.0,
                          ),
                          RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              })
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
          ButtomButton(
            buttonTittle: '计算',
            onTap: () {
              Calculator calc = Calculator(
                  height: height,
                  weight: weight,
                  age: age,
                  waist: waist,
                  gender: selctedGender.index);
              calc.calculateBMI();
              calc.calculateBF();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    interpretation: calc.getInterpretation(),
                    bmiText: calc.getResult(),
                    bmiResult: calc.getBMI(),
                    brResult: calc.getBF(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
