import 'package:flutter/material.dart';

import 'design/colors.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          useMaterial3: true),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
