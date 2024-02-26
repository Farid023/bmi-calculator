import 'dart:math';
import 'dart:ui';


import '../design/colors.dart';



class CalculateBMI {
  CalculateBMI({required this.height, required this.weight});

  final double height;
  final int weight;

  late double _bmiScore;

  String calculate() {
    _bmiScore = weight / pow(height / 100, 2);
    return _bmiScore.toStringAsFixed(2);
  }

  String getResultText() {
    if (_bmiScore < 18.5) {
      return "Underweight";
    } else if (_bmiScore >= 18.5 && _bmiScore < 25) {
      return "Normal weight";
    } else if (_bmiScore >= 25 && _bmiScore < 30) {
      return "Overweight";
    } else {
      return "Obesity";
    }
  }

  Color getResultTextColor() {
    if (_bmiScore < 18.5) {
      return redAccentColor;
    } else if (_bmiScore >= 18.5 && _bmiScore < 25) {
      return greenColor;
    } else if (_bmiScore >= 25 && _bmiScore < 30) {
      return orangeColor;
    } else {
      return redColor;
    }
  }

  String getAdviceText() {
    if (_bmiScore < 18.5) {
      return "You have a lower than a normal body weight.\n You should eat a bit more!";
    } else if (_bmiScore >= 18.5 && _bmiScore < 25) {
      return "You have a normal body weight.\n Good job!";
    } else {
      return "You have a more than normal body weight.\n Try to do more Exercise";
    }
  }
}
