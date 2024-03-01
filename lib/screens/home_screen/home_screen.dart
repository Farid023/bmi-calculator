

import 'package:bmi_calculator/screens/home_screen/widgets/person_details_view.dart';
import 'package:flutter/material.dart';

import '../../design/colors.dart';
import '../../functions/calculate_bmi.dart';
import '../result_screen/result_screen.dart';
import 'widgets/calculate_button.dart';
import 'widgets/gender_view.dart';
import 'widgets/height_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 170.0;
  int weight = 64;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
              color: whiteColor, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const GenderView(),
              const SizedBox(height: 16),
              HeightCard(
                height: height,
                onSlide: (value) {
                  setState(
                    () {
                      height = value;
                    },
                  );
                },
              ),
              const SizedBox(height: 16),
              PersonDetailsView(
                age: age,
                weight: weight,
                onIncrementWeight: () {
                  weight++;
                  setState(() {});
                },
                onDecrementWeight: () {
                  if (weight > 0) {
                    weight--;
                    setState(() {});
                  }
                },
                onIncrementAge: () {
                  age++;
                  setState(() {});
                },
                onDecrementAge: () {
                  if(age>0){
                    age--;
                    setState(() {});
                  }

                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CalculateButton(
        text: "CALCULATE",
        onCalculate: () {
          CalculateBMI calculateBMI =
              CalculateBMI(height: height, weight: weight);



          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ResultScreen(
                  bmiScore: calculateBMI.calculate(),
                  bmiText: calculateBMI.getResultText(),
                  resultTextColor: calculateBMI.getResultTextColor(),
                  adviceText: calculateBMI.getAdviceText(),
                ),
              ));
        },
      ),
    );
  }
}
