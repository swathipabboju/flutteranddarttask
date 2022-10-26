

import 'dart:js';

import 'package:callback_listview/callback.dart';
import 'package:callback_listview/listviewPage.dart';
import 'package:callback_listview/routes/routes.dart';
import 'package:flutter/material.dart';

class Pages{
   static  Map<String,WidgetBuilder> get routes{
    return{
      Routes.listview:(context) => ListViewPage(),
     

   };

   }

}