import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          
          ),
          
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Padding(padding: const EdgeInsets.only(left: 20,right: 100,bottom: 20,top: 20),
          child: TextField(
            cursorColor: Colors.purple,
            decoration: InputDecoration(
              isDense: true, // and add this line
    hintText: 'Username',
              
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(10)
                )
                ),
                ),
          ),
        
          



  Padding(padding: const EdgeInsets.only(left: 20,right: 100,bottom: 20),
  child: TextFormField(cursorColor: Colors.yellow,
          obscureText: true,
          
          decoration: InputDecoration(suffixIcon: Icon(Icons.remove_red_eye_sharp),
            

             isDense: true, // and add this line
    hintText: 'Password',
    
            contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(10))),),
          
  ),
  
          
            




Padding(padding: const EdgeInsets.only(left: 20,right: 100,bottom: 20),
child: TextField(
            cursorColor: Colors.black,decoration: new InputDecoration(
              labelText: "Enter your mobile number"),
              keyboardType: TextInputType.number,
           
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],),
  ),

          
          





Padding(padding: const EdgeInsets.only(left: 20,right: 100,bottom: 20),
child: TextField(cursorColor: Colors.red,maxLength: 10,decoration: InputDecoration(hintText: "Enter your project name with max length of 10"),),
  ),

          
          
          


          Padding(padding: const EdgeInsets.only(left: 20,right: 100,bottom: 20),
          child: TextField(cursorColor: Colors.green,minLines: 1,maxLines: null,
          decoration: InputDecoration(hintText: "Describe about your project"),),
  ),
          
            
          

          
        ],)
        
        ),
    )
  );
}

