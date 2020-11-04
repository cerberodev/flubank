import 'package:flubank/ui/screens/home/home_screen.dart';
import 'package:flubank/ui/screens/login/login_screen.dart';
import 'package:flubank/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';


final Map<String, WidgetBuilder> appRoutes = {
  SplashScreen.routeName: (_) => SplashScreen(),
  LoginScreen.routeName: (_) => LoginScreen(),
  HomeScreen.routeName: (_) => HomeScreen(),
};
