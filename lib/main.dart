import 'package:callback_task1/newscreen2.dart';
import 'package:callback_task1/scree2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scree1(),);
  }
}

class Scree1 extends StatefulWidget {
   const Scree1({super.key,});
  

  @override
  State<Scree1> createState() => _Scree1State();
}

class _Scree1State extends State<Scree1> {
  
   List<Map> userList = [];
  

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        title: Text("List of users details"),

        ) ,



        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),

        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>newScreen2(
                addUser: (String myName,String email) { 
                  
                  var details={"username":myName,"mail":email};
                  setState(() {
                    userList.add(details);

                  });
                  

               },
               )
           
           )
           );
           
          
        },
        ),

        bottomNavigationBar: BottomAppBar(
          color: Colors.yellow,
          
        child: Container(height: 40,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,


        body: Container(
          child: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context, index) {
          final details=userList[index];

          return ListTile(
            leading: Image.network("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png"),
            title: Text(userList[index]["username"]),
            subtitle: Text(userList[index]["mail"]),
          
          );
        }
        )
        ),



       
        
        );
  
  }
}

