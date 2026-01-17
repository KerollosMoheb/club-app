import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/feature/auth/presentation/login_screen.dart';
import 'package:club_app/feature/auth/presentation/register_screen.dart';
import 'package:club_app/feature/splash/presentation/splash_screen.dart';
import 'package:club_app/feature/start/presentation/start_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.startScreen:
        return MaterialPageRoute(builder: (context) => const StartScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen ());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No Route Found for {$settings.name}')),
          ),
        );
    }
  }
}
