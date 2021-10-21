import 'package:bmi_meter/RBcard.dart';
import 'package:bmi_meter/constant.dart';
import 'package:bmi_meter/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_meter/cntr_page.dart';
import 'constant.dart';
import 'bottom_buttonpage.dart';
import 'round_icon_buttonpage.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.resultText, this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Padding(
          padding: EdgeInsets.only(left: 55),
          child: Text(
            'RESULT',
            style: TextStyle(fontSize: 40, color: Colors.pinkAccent),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 5,
              child: Cntr(
                color: kInactiveColor,
                Bcard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kInterpretation,
                    ),
                  ],
                ),
              )),
          BottomButton(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Inputpage();
              }));
            },
            bottomTitle: 'Re-Calculate',
          )
        ],
      ),
    );
  }
}
