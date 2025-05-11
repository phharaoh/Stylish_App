import 'package:flutter/material.dart';
import 'package:stylish_app/core/app_route.dart';
import 'features/Auth/views/Sign/signin_view.dart';
import 'package:stylish_app/core/styles/colors.dart';
import 'package:stylish_app/features/Auth/views/Splash/getstarted_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const GetStartView(),
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: AppRoute().generateRoute,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
    );
  }
}
