import 'package:flutter/material.dart';
import 'package:stylish_app/features/Auth/views/Splash/getstarted_view.dart';
import 'package:stylish_app/features/Auth/views/Splash/onboarding.dart';
import 'package:stylish_app/features/Auth/views/Splash/splash_view.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashView());
      case '/onborading':
        return MaterialPageRoute(builder: (_) => const Onboarding());
      case '/getStarted':
        return MaterialPageRoute(builder: (_) => const GetStartView());
      default:
        return null; // Return null if no route is found
    }

  }
}
