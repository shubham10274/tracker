import 'package:flutter/material.dart';
import 'package:weight_track/screens/auth_screen/auth_screen.dart';
import 'package:weight_track/screens/home_screen/home_screen.dart';
import 'package:weight_track/screens/start_screen/start_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  AuthScreen.routeName: (context) => AuthScreen(),
  StartScreen.routeName: (context) => StartScreen(),
};
