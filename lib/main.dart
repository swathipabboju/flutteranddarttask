import 'package:flutter/material.dart';
import 'package:navigation_project/getstartPage.dart';
import 'package:navigation_project/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GetStart(),);
  }
}





