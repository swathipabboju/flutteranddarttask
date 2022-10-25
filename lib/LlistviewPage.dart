import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listviewPage extends StatefulWidget {
  const listviewPage({super.key});

  @override
  State<listviewPage> createState() => _listviewPageState();
}

class _listviewPageState extends State<listviewPage> {
  List<String> statelist=["India","japan","pakistan","china","chili","peru","USA","Austrelia","Uk","kenada",'Malta', 'Moldova', 'Monaco', 'Montenegro',
        'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
        'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 
        'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State List")
        ),


        body: ListView.builder(
          
          itemCount: statelist.length,
          
          itemBuilder: (context, index) {
            final state=statelist[index];
            
          return GestureDetector(
            onTap: (() {
              showAlert(state);
            }),
            child: ListTile(
          leading: Text("Country : "),
          title:Text(statelist[index]),
          ),
          );
        }
        
        
        )
        
        
        
        );
  }
  
  void showAlert(String message, {String text = ""}) {
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
  }
  
}
