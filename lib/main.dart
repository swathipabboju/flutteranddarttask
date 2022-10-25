import 'package:flutter/material.dart';
import 'package:navigation_project/LlistviewPage.dart';
import 'package:navigation_project/getstartPage.dart';
import 'package:navigation_project/loginPage.dart';
//import 'package:navigation_project/routes/listview_page.dart';
//import 'package:navigation_project/routes/listview_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: listviewPage(),);
  }
}





