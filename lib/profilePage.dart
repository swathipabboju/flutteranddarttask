import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigation_project/routes/allRoutes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROFILE")
      ),
      body: TextButton(onPressed: () { 
        Navigator.popUntil(context, ModalRoute.withName(AllRoutes.getstart));
       },
      child: Text("click")),

      );
    
  }
}
  