import 'package:exam_project/features/onboarding/presentation/pages/forgot_password_screen.dart';
import 'package:exam_project/features/onboarding/presentation/pages/email_sent_screen.dart';
import 'package:exam_project/features/onboarding/presentation/pages/sabzi_ai_pages.dart';
import 'package:exam_project/features/onboarding/presentation/pages/verification_input_screen.dart';
import 'package:exam_project/features/onboarding/presentation/provider/app_provider.dart';
import 'package:exam_project/features/onboarding/presentation/provider/category_provider.dart';
import 'package:exam_project/features/onboarding/presentation/provider/note_provider.dart';
import 'package:exam_project/features/onboarding/presentation/provider/product_provider.dart';
import 'package:exam_project/screens/home_page.dart';
import 'package:exam_project/screens/home_pagee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ProductProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: (SabziAiPage()),
    );
  }
}
