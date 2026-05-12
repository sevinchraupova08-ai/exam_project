import 'package:exam_project/features/onboarding/presentation/widgets/auth_textfiled.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../widgets/gradient_button.dart';
import '../widgets/social_button.dart';

class SignInEmailPage extends StatelessWidget {
  const SignInEmailPage({super.key});

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
                hint: "Email Address",
              ),

              const SizedBox(height: 18),

              GradientButton(
                title: "Continue",
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.signInPassword,
                  );
                },
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  const Text(
                    "Dont have an Account ? ",
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.createAccount,
                      );
                    },
                    child: const Text(
                      "Create One",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 42),

              const SocialButton(
                icon: Icons.apple,
                title: "Continue With Apple",
              ),

              const SizedBox(height: 14),

              const SocialButton(
                icon: Icons.g_mobiledata,
                title: "Continue With Google",
              ),

              const SizedBox(height: 14),

              const SocialButton(
                icon: Icons.facebook,
                title: "Continue With Facebook",
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}