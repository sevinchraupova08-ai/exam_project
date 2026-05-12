import 'package:exam_project/features/onboarding/presentation/pages/create_account_page.dart';
import 'package:exam_project/features/onboarding/presentation/pages/sign_in_email_page.dart';
import 'package:exam_project/features/onboarding/presentation/pages/sign_in_password_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const signInEmail = "/";
  static const signInPassword = "/password";
  static const createAccount = "/create";

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signInEmail:
        return MaterialPageRoute(builder: (_) => const SignInEmailPage());

      case signInPassword:
        return MaterialPageRoute(builder: (_) => const SignInPasswordPage());

      case createAccount:
        return MaterialPageRoute(builder: (_) => const CreateAccountPage());

      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
