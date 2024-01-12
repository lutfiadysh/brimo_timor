import 'package:brimo_timor/core/theme/main_color.dart';
import 'package:brimo_timor/home_page/home_page.dart';
import 'package:brimo_timor/presentation/pages/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BRImo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: MainColor.primaryColor),
        useMaterial3: true,
      ),
      home: OnBoardingPage(),
    );
  }
}
