//import 'package:first_app/login_page.dart';
//import 'package:first_app/routes/app_routes.dart';
//import 'package:first_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigation_project/loginPage.dart';
import 'package:navigation_project/signupPage.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetStart")),
      body: Center(
          child: Column(
        children: [


          
          TextButton(
              onPressed: () {

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => login()));

              },
              child: Text("login")),


              TextButton(
              onPressed: () {

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUpPage()));

              },
              child: Text("signin")),

            



            // redirect to one screen to another screen

          /*
          TextButton(
              onPressed: () {

                //using navigator  for single screen

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => login()));
                                                                    ||
                                                    class name of screen, to which we want to go
                    

              },
              child: Text("login")),



              */
        ],
      )),
    );
  }
}
