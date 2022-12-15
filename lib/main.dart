import 'package:bmi_test1/view/bmi_data_result.dart';
import 'package:bmi_test1/view/bmi_data_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
        primarySwatch: Colors.blue,
      ),
      home: const BmiDataScreen(),
    );
  }
}
