import 'package:auth/auth/screen/login_screen.dart';
import 'package:auth/auth/screen/register_screen.dart';
import 'package:auth/auth/screen/splash_screen.dart';
import 'package:auth/route/page_route_name.dart';
import 'package:flutter/material.dart';

class GenerateRoute {
static  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteName.initial:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case PageRouteName.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case PageRouteName.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
