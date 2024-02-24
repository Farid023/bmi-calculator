
import 'package:flutter/material.dart';

import '../../../design/colors.dart';


class CardBox extends StatelessWidget {
  const CardBox({
    super.key,
    required this.child,
    this.borderColor = Colors.transparent,
  });

  final Widget child;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: secondaryColor,
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color(0xFF8EB3CB),
            secondaryColor,
            Color(0xFF0C4A77),
          ],
          tileMode: TileMode.mirror,
        ),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: child,
    );
  }
}
