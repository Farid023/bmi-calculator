import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../design/colors.dart';
import '../home_screen/widgets/calculate_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.bmiScore, required this.bmiText});

  final String bmiScore;
  final String bmiText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
              color: whiteColor, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 26.0,
            ),
            FadeInDown(
              child: const Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 48,
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FadeInLeft(
                      child: Text(
                        bmiText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 26,
                            color: greenColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    FadeInRight(
                      child: Text(
                        bmiScore,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 76),
                      ),
                    ),
                    FadeInUp(
                      child: const Text(
                        "You have a normal body weight.\nGood job!",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: whiteColor, fontSize: 22),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        text: 'RE-CALCULATE',
        onCalculate: () {},
      ),
    );
  }
}
