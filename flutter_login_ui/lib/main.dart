import 'package:flutter/material.dart';
import 'package:flutter_login_ui/login.dart';
import 'package:flutter_login_ui/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login' : (context) => MyLogin(),
    'register' : (context) => MyRegister()},

  ));
}




