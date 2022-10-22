import 'package:flutter/material.dart';
import 'package:flutter_starter_project/utils/routes.dart';

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({
    super.key,
    this.isLoggedIn = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: isLoggedIn ? '' : '',
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
