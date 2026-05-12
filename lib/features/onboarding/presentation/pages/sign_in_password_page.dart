import 'package:exam_project/features/onboarding/presentation/widgets/auth_textfiled.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../widgets/gradient_button.dart';

class SignInPasswordPage extends StatelessWidget {
  const SignInPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),

              const Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 30),

              const AuthTextField(
                hint: "Password",
              ),

              const SizedBox(height: 18),

              GradientButton(
                title: "Continue",
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.createAccount,
                  );
                },
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  const Text("Forgot Password ? "),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}