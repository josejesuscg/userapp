import 'package:flutter/material.dart';
import 'package:users_app/screen/home_screen.dart';
import 'package:users_app/screen/settings_screen.dart';


class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/HomeScreen':
        return MaterialPageRoute(builder: (context) =>  const HomeScreen());
      case '/SettingsScreen':
        return MaterialPageRoute(builder: (context) =>  const SettingsScreen());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}