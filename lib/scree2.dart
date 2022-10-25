import 'dart:js_util';

import 'package:callback_task1/main.dart';
//import 'package:callback_task1/screen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen2 extends StatefulWidget {

  final Function(String  myName) addUser;
  const screen2({super.key,required this.addUser});

 // const screen2(Null Function(dynamic myName) param0, {super.key,required this.addUser});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
   

  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
   

     return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.none,
              //maxLines: 5,
              // maxLength: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              
              obscureText: true,
              controller: _passwordController,
              //maxLines: 5,
              // maxLength: 10,
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(

                onPressed: () {
                  addUser("teju");
                //  print(ad("tejutejasvi"));
 Navigator.pop(context);
                  // if(validateInputs()){
                   
                  // }
                  
                
                
                },
                
                child: Text("submit123",),
                
                
                //style: ButtonStyle(backgroundColor:),
              ),

          //     TextButton(
          //   onPressed: () {
          //   //  addUser("");
          //    Navigator.pop(context);
          //   },
          //   child: Text("Back"),
          //   //style: ButtonStyle(backgroundColor:),
          // )
            ],

          ),
        ],
      ),
    );

  }
 bool isValidEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  bool isValidPassword(String password) {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}')
        .hasMatch(password);
  }




  validateInputs() {
    if (_emailController.text.isEmpty) {
      showAlert("Please enter email");
    }
    else if(isValidEmail(_emailController.text)==false){
      showAlert("please enter valid email");

    }
    else if (_passwordController.text.isEmpty) {
      showAlert("Please enter password");
    }
    else if(isValidPassword(_passwordController.text)==false){
      showAlert("please enter valid password");

    }
    else{
     return 
                    Navigator.of(context) .push(MaterialPageRoute(builder: (context) => Scree1()));
                  
      
    }
  }

  showAlert(String message, {String text = ""}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(message + text),
            actions: [
              TextButton(
                onPressed: () {
                  // print("button Action");
                  Navigator.pop(context);
                },
                child: Text("ok"),
                //style: ButtonStyle(backgroundColor:),
              )
            ],
        
          );
        }
    );//showDialog
        }//showAlert

  
}

String addUser(String s) {
  return "swathi teju";
}



