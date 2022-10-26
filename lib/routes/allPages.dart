import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:navigation_project/AddressPage.dart';
import 'package:navigation_project/LlistviewPage.dart';
import 'package:navigation_project/dashboardPage.dart';
import 'package:navigation_project/forgotPasswordPage.dart';
import 'package:navigation_project/getstartPage.dart';
import 'package:navigation_project/loginPage.dart';
import 'package:navigation_project/otpscreenPage.dart';
import 'package:navigation_project/profilePage.dart';
import 'package:navigation_project/signupPage.dart';

import 'allRoutes.dart';

class AllPages{
 static  Map<String,WidgetBuilder> get routes{
  return {

AllRoutes.listview:(context)=>listviewPage(),
AllRoutes.login:((context) => login()),
AllRoutes.signup:((context) => SignUpPage()),
AllRoutes.address:((context) => AddressPage()),
AllRoutes.dashBoard:((context) => DashBoard()),
AllRoutes.forgot:((context) => ForgotPassword()),
AllRoutes.getstart:((context) => GetStart()),
AllRoutes.otp:((context) => OtpPage()),
AllRoutes.login:((context) => login()),
AllRoutes.profile:((context) => Profile()),

  };
  
 }
  
}