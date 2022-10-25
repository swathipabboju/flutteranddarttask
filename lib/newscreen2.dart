import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class newScreen2 extends StatelessWidget {
  const newScreen2({super.key, required this.addUser});
  //declaration
  final Function(String  myName,String email) addUser;
  
  @override
  Widget build(BuildContext context) {
      TextEditingController _usernameController=TextEditingController();
     TextEditingController _emailController=TextEditingController();

    
    return MaterialApp(home:Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
               decoration: InputDecoration(hintText: "Enter your name"),
              
              controller: _usernameController,
              //maxLines: 5,
              // maxLength: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),

            child: TextField(
              decoration: InputDecoration(hintText: "Enter your email"),
              
              controller: _emailController,
              keyboardType: TextInputType.none,
              
              //maxLines: 5,
              // maxLength: 10,
            ),
          ),
          


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(

                onPressed: () {
                 
                  
                  addUser(_usernameController.text,_emailController.text);
                Navigator.pop(context);
                
                },
                
                child: Text("submit",),
                
                
              ),

             TextButton(
            onPressed: () {
         
              Navigator.pop(context);
            },
            child: Text("Back"),
        
          )
            ],

          ),
        ],
      ),
    )
    );
    
  }
  
  
}