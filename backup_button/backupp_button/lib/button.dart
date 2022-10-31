// ignore: depend_on_referenced_packages
/* import 'package:first_app/routes/Colour.dart'; */

import 'package:backupp_button/routes/Colour.dart';
import 'package:flutter/material.dart';

class ButtonDesign extends StatelessWidget {
  const ButtonDesign({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Button"),
        ),

        body: 
        
         Center(
           child: Container(
        
            height: 55,
            width: 244,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:Col.bgColor,
            ),

            child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    foregroundColor: Col.textColor,
                    textStyle: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    )),
                child: const Text("Get Start")),
        ),
         ), 

      ),
    );
  }
}