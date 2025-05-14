import 'package:flutter/material.dart';
import 'package:stylish_app/core/app_route.dart';
import 'features/Profile/Views/profile_view.dart';
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
      home: const ProfileView(),
      debugShowCheckedModeBanner: false,

      // onGenerateRoute: AppRoute().generateRoute,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          elevation: 0,
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
