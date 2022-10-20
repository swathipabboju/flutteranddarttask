// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: MyAppDemo(),
    );
  } 
}


class MyAppDemo extends StatefulWidget {
  const MyAppDemo({super.key});

  @override
  _MyAppDemo createState() => _MyAppDemo();
}

class _MyAppDemo extends State<MyAppDemo> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Login Page'),
      ),
      body: Center(
        child:Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                hintText: "Enter email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _password,
              decoration: InputDecoration(
                hintText: "Enter Password",
              ),
            ),
          ),
          TextButton(onPressed: (){
            validationInputs();

          }, child: Text("login"))

        ],),),
    );
  }
  
  validationInputs() {
    var email = _email.text;
    var password=_password.text;
   RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email);
    if(_email.text.isEmpty)
    {
      showAlert("please enter valid email");
    }
    else if(emailValid){
      showAlert("Enter valid mail");

    }
    else if(_password.text.isEmpty){

showAlert("please enter valid password");
    }
    else if(regex.hasMatch(password)){
showAlert("Enter valid password");
    }
   
  }

  showAlert(String message)
  {
    showDialog(context: context, builder: (BuildContext context) {
      
      return AlertDialog(
          title: Text(message),
          actions: [
TextButton(onPressed: (){
            validationInputs();

          }, child: Text("ok"))
          ],
      );
    }
    );
  }
}

