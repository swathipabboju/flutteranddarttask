import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigation_project/routes/allRoutes.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard")
        ),
        body: TextButton(onPressed: () { 
          Navigator.pushNamed(context, AllRoutes.address);
         },
        child: Text("Dashborad")),
        );
        
  }
}