import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:navigation_project/getstartPage.dart';
import 'package:navigation_project/loginPage.dart';
import 'package:navigation_project/routes/app_routes.dart';
import 'package:navigation_project/signupPage.dart';

class AppPages{
  static Map<String,WidgetBuilder> get routes{
    
return{

"/getstart":((context)=>GetStart()),
  "/login":((context)=>login()),
  "/signup":((context)=>SignUpPage())

};
  



    }

  }
