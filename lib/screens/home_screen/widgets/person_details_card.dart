import 'package:bmi_calculator/screens/home_screen/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

import '../../../design/colors.dart';
import '../../../design/images.dart';
import 'card_box.dart';

class PersonDetailsCard extends StatelessWidget {
  const PersonDetailsCard(
      {super.key,
      required this.cardHeaderText,
      required this.value,
      required this.onIncrement,
      required this.onDecrement});

  final String cardHeaderText;
  final int value;
  final void Function() onIncrement;
  final void Function() onDecrement;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CardBox(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              cardHeaderText,
              style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              "$value",
              style: const TextStyle(
                  color: whiteColor, fontSize: 30, fontWeight: FontWeight.w800),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedButton(
                  icon: minus,
                  onTap: onDecrement,
                ),
                RoundedButton(
                  icon: plus,
                  onTap: onIncrement,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
