import 'package:exam_project/core/routes/app_routes.dart';
import 'package:exam_project/features/auth/cubit/auth_cubit.dart';
import 'package:exam_project/features/onboarding/data/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider(
        create: (context) => AuthCubit(context.read<AuthRepository>()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "eccomerco UI",
          theme: ThemeData(
            fontFamily: "Roboto",
            scaffoldBackgroundColor: const Color(0xffF4F4F4),
          ),
          onGenerateRoute: AppRoutes.onGenerateRoute,
          initialRoute: AppRoutes.signInEmail,
        ),
      ),
    );
  }
}
