import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../design/colors.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final FaIcon icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          elevation: 10,
          backgroundColor: Colors.black26,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(10)),
      child: icon,
    );
  }
}
