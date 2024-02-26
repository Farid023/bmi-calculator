import 'dart:math';

import 'package:bmi_calculator/screens/home_screen/widgets/person_details_card.dart';
import 'package:flutter/material.dart';

class PersonDetailsView extends StatelessWidget {
  const PersonDetailsView({
    super.key,
    required this.weight,
    required this.age,
    required this.onIncrementWeight,
    required this.onDecrementWeight, required this.onIncrementAge, required this.onDecrementAge,
  });

  final int weight;
  final int age;

  final Function() onIncrementWeight;
  final Function() onDecrementWeight;

  final Function() onIncrementAge;
  final Function() onDecrementAge;


// late int personAge = widget.age;
// late int personWeight = widget.weight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PersonDetailsCard(
          cardHeaderText: 'WEIGHT',
          value: weight,
          onIncrement: onIncrementWeight,
          onDecrement: onDecrementWeight,
        ),
        const SizedBox(width: 16),
        PersonDetailsCard(
          cardHeaderText: 'AGE',
          value: age,
          onIncrement: onIncrementAge,
          onDecrement: onDecrementAge,
        ),
      ],
    );
  }
}
