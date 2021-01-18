import 'package:flutter/material.dart';
import 'package:myfarm/Screens/Farmers.dart';
import 'package:myfarm/Screens/Loginscreen.dart';
import 'Screens/Loginscreen.dart';
import 'Screens/Registerscreen.dart';

class AppRoutes {
  AppRoutes._();

  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';
  static const String farmersList = '/farmers-list';

  static Map<String, WidgetBuilder> define() {
    return {
      authLogin: (context) => Login(),
      authRegister: (context) => Register(),
      farmersList: (context) => Farmers(),
    };
  }
}
