import 'package:demo_s/main_fe/home/presentation_layer/home.dart';
import 'package:demo_s/main_fe/login/presentation_layer/login.dart';
import 'package:demo_s/main_fe/singup/presentation_layer/singup_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  // Route name constants

  static const String login = '/';
  static const String dashBoard = 'DashBoard';
 static const String signUp = 'SignUp';

  /// The map used to define our routes, needs to be supplied to [MaterialApp]
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      Routes.login: (context) =>  Login(),
      Routes.signUp: (context) =>  SingUp(),
      Routes.dashBoard: (context) => const Home(),
    };
  }
}
