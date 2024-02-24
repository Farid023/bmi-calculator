import 'package:flutter/material.dart';

import '../../../design/colors.dart';
import 'card_box.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({super.key, required this.height, required this.onSlide, });

  final double height;
  final void Function(double) onSlide;

  @override
  Widget build(BuildContext context) {
    return CardBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "HEIGHT",
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: height.toStringAsFixed(0),
                style: const TextStyle(
                    color: whiteColor,
                    fontSize: 60,
                    fontWeight: FontWeight.w900)),
            const TextSpan(
                text: "cm",
                style: TextStyle(color: Colors.white70, fontSize: 18))
          ])),
          Slider(
            thumbColor: Colors.pink,
            activeColor: Colors.white,
            inactiveColor: Colors.black12,

            value: height,
            max: 240,
            divisions: 240,
            //  label: _currentSliderValue.round().toString(),
            onChanged: onSlide,
          ),
        ],
      ),
    );
  }
}
