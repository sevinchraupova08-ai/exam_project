import 'package:exam_project/features/auth/cubit/auth_cubit.dart';
import 'package:exam_project/features/auth/cubit/navigation_cubit.dart';
import 'package:exam_project/features/auth/cubit/order_cubit.dart';
import 'package:exam_project/features/auth/cubit/password_cubit.dart';
import 'package:exam_project/features/onboarding/data/repository/auth_repository.dart';
import 'package:exam_project/features/onboarding/data/repository/password_repository.dart';
import 'package:exam_project/features/onboarding/presentation/pages/forgot_password_page.dart';
import 'package:exam_project/features/onboarding/presentation/pages/main_page.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(create: (_) => NavigationCubit()),
        BlocProvider<OrderStatusCubit>(create: (context) => OrderStatusCubit()),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: MainPage()),
    );
  }
}
