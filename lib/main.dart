import 'package:Taskio/core/constants/app_assets.dart';
import 'package:Taskio/core/constants/app_texts.dart';
import 'package:Taskio/features/onboarding/onboarding_item.dart';
import 'package:Taskio/features/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}
