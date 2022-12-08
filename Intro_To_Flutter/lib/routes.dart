import 'package:flutter/cupertino.dart';
import 'package:intro_to_flutter/Screens/Login.dart';
import 'package:intro_to_flutter/Screens/Signup.dart';
import 'package:intro_to_flutter/Screens/Dashboard.dart';
import 'package:intro_to_flutter/Screens/Settings.dart';

final Map<String, WidgetBuilder> routes = {
  Login.routeName: (BuildContext context) => Login(),
  Signup.routeName: (BuildContext context) => Signup(),
  Dashboard.routeName: (BuildContext context) => Dashboard(),
  Settings.routeName: (BuildContext context) => Settings(),
};
