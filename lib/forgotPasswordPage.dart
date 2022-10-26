import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigation_project/routes/allRoutes.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Forgot Password")),
    body: TextButton(onPressed: () {
      Navigator.pushNamed(context, AllRoutes.dashBoard);
    },child: Text("forgot password"),
    ),
    );
  }
}