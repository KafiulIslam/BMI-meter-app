import 'package:bmi_meter/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RBcard.dart';
import 'cntr_page.dart';
import 'constant.dart';
import 'result_page.dart';
import 'bottom_buttonpage.dart';
import 'round_icon_buttonpage.dart';
import 'calculator_brain.dart';

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Gender selectedGender;
  int height = 180;
  int weight = 50;
  int age = 50;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 60,
            title: Padding(
              padding: EdgeInsets.only(left: 55),
              child: Text(
                'BMI METER',
                style: TextStyle(fontSize: 30, color: Colors.pinkAccent),
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Cntr(
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          color: selectedGender == Gender.male
                              ? kActiveColor
                              : kInactiveColor,
                          Bcard: RBcard(
                            icon: FontAwesomeIcons.male,
                            gender: 'Male',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Cntr(
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          color: selectedGender == Gender.female
                              ? kActiveColor
                              : kInactiveColor,
                          Bcard: RBcard(
                            icon: FontAwesomeIcons.female,
                            gender: 'Female',
                          ),
                        ),
                      ),
                    ]),
              ),
              Expanded(
                child: Cntr(
                  color: Color(0xFF0C0F1D),
                  Bcard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style:
                            TextStyle(fontSize: 22, color: Color(0x98FFFFFF)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                                fontSize: 20, color: Color(0x98FFFFFF)),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0x98FFFFFF),
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 20),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 100.0,
                            max: 200.0,
                            onChanged: (double userInput) {
                              setState(() {
                                height = userInput.round();
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Cntr(
                            Bcard: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Weight',
                                  style: TextStyle(
                                      fontSize: 22, color: Color(0x98FFFFFF)),
                                ),
                                Text(weight.toString(),
                                    style: TextStyle(
                                        fontSize: 45,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPress: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPress: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                            color: Color(0xFF0C0F1D)),
                      ),
                      Expanded(
                        child: Cntr(
                            Bcard: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Age',
                                  style: TextStyle(
                                      fontSize: 22, color: Color(0x98FFFFFF)),
                                ),
                                Text(age.toString(),
                                    style: TextStyle(
                                        fontSize: 45,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPress: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPress: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                            color: Color(0xFF0C0F1D)),
                      ),
                    ]),
              ),
              BottomButton(
                onTap: () {
                  CalculatorBrain calc =
                      CalculatorBrain(height: height, weight: weight);

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    );
                  }));
                },
                bottomTitle: 'Find Result',
              ), //pink bottom bar
            ],
          )),
    );
  }
}
