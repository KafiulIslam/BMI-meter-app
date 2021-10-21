import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have gain overweight which is slightly threatening for health.\n You must have some exercise regularly with a sound diet.';
    } else if (_bmi > 18.5) {
      return 'Your BMI result is quite satisfactory.\nKeep it up.';
    } else {
      return 'Your BMI result is not satisfactory enough.\nYou should gain more weight to get healthy.';
    }
  }
}
