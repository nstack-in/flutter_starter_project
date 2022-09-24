import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_starter_project/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded(() {
    runApp(const MyApp());
  }, (error, stack) {
    // Write your error reporter code here
    // You may use firebase crashlytics as a simple solution
  });
}
