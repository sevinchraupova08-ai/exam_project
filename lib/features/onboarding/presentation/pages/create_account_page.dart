import 'package:exam_project/features/onboarding/presentation/widgets/auth_textfiled.dart';
import 'package:flutter/material.dart';

import '../widgets/gradient_button.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: const Color(0xffEFEFEF),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 16,
                  ),
                ),
              ),

              const Spacer(),

              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 30),

              const AuthTextField(hint: "Firstname"),

              const SizedBox(height: 14),

              const AuthTextField(hint: "Lastname"),

              const SizedBox(height: 14),

              const AuthTextField(hint: "Email Address"),

              const SizedBox(height: 14),

              const AuthTextField(hint: "Password"),

              const SizedBox(height: 22),

              GradientButton(
                title: "Continue",
                onTap: () {},
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}