import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigation_project/routes/allRoutes.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("otp"),
      ),
      body: TextButton(onPressed: () {
        Navigator.pushNamed(context, AllRoutes.profile);
        },
      child: Text("click")
      ),
      );
    
  }
}