import 'package:flutter/material.dart';
import 'package:flutter_starter_project/src/screens/auth/forget_password.dart';
import 'package:flutter_starter_project/src/screens/auth/login.dart';
import 'package:flutter_starter_project/src/screens/auth/register.dart';

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final name = settings.name;
    switch (name) {
      case LoginPage.routeName:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case RegisterPage.routeName:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      case ForgetPassword.routeName:
        return MaterialPageRoute(
          builder: (context) => const ForgetPassword(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
    }
  }
}
