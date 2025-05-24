import 'core/app_route.dart';
import 'package:flutter/material.dart';
import 'package:stylish_app/core/styles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute().generateRoute,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: AppColors.white,
          iconTheme: IconThemeData(color: AppColors.primary),
        ),
        scaffoldBackgroundColor: AppColors.white,
        fontFamily: 'Montserrat',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
    );
  }
}
