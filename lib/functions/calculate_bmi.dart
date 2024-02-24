import 'dart:math';

class CalculateBMI {
  CalculateBMI({required this.height, required this.weight});

  final double height;
  final int weight;

  late double bmiScore;
  late String resultText;

  String calculate() {
    bmiScore = weight / pow(height / 100, 2);
    return bmiScore.toStringAsFixed(2);
  }

  String getResultText() {
    if (bmiScore < 18.5) {
      resultText = "Underweight";
    } else if (bmiScore >= 18.5 && bmiScore < 25) {
      resultText = "Normal weight";
    } else if (bmiScore >= 25 && bmiScore < 30) {
      resultText = "Overweight";
    } else if (bmiScore >= 30) {
      resultText = "Obesity";
    }

    return resultText;
  }
}
