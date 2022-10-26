import 'package:flutter/material.dart';

class Itembuilder extends StatelessWidget {
  const Itembuilder({
    Key? key,
    required this.state,
    required this.callbackValue,
  }) : super(key: key);

  final String state;
  final Function(String value) callbackValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        callbackValue(state);
      }),
      
      child: ListTile(
            leading: Text("Country : "),
            title:Text(state),
            ),
    );
    
  }
}