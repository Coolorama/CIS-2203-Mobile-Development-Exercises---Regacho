import 'package:flutter/material.dart';
import 'package:intro_to_flutter/Screens/Login.dart';
import 'package:intro_to_flutter/routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Login.routeName,
    routes: routes,
  ));
}
