import 'package:flutter/material.dart';

import '../../../design/colors.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key, required this.text, required this.onCalculate});

  final String text;
  final void Function() onCalculate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCalculate,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.sizeOf(context).width,
        // margin: const EdgeInsets.only(top: 20),
        height: 74,
        color: Colors.pink,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
