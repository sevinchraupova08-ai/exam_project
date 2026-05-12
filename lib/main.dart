import 'package:exam_project/features/auth/cubit/password_cubit.dart';
import 'package:exam_project/features/onboarding/data/repository/password_repository.dart';
import 'package:exam_project/features/onboarding/presentation/pages/forgot_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordCubit(PasswordRepository()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ForgotPasswordPage(),
      ),
    );
  }
}



