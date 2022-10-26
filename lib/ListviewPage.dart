import 'package:callback_listview/callback.dart';
import 'package:flutter/material.dart';


class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => ListViewPageState();
}

class ListViewPageState extends State<ListViewPage> {
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

            child: Itembuilder(state: state,
            callbackValue: (value) {
              showAlert(value);
            },),
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


