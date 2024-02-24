import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../design/colors.dart';
import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2500)).whenComplete(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          //Todo( --- builderde (_) nedir? Context otururuk )
          builder: (_) => const HomeScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: FadeInUpBig(
        child: const Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
                color: whiteColor, fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
