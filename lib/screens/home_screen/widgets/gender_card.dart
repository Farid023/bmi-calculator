import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../design/colors.dart';
import 'card_box.dart';

class GenderCard extends StatelessWidget {
  const GenderCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.onSelect,
      required this.borderColor});

  final String title;
  final IconData icon;
  final void Function() onSelect;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onSelect,
        child: CardBox(
          borderColor: borderColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(
                icon,
                size: 80,
                color: whiteColor,
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
