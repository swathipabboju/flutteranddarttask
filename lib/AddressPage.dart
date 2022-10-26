import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigation_project/routes/allPages.dart';
import 'package:navigation_project/routes/allRoutes.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Address Details"),
      ),
      body: TextButton(onPressed: () {
      Navigator.popUntil(context, ModalRoute.withName(AllRoutes.forgot));
      },
      child: Text("click"),),
      );
  }
}