import 'package:flutter/material.dart';
import 'package:multi_food/utils/color_extension.dart';
import 'package:multi_food/views/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: TColor.primary,
        fontFamily: 'Quicksand',
      ),
      home: const OnboardingScreen(),
    );
  }
}
