import 'package:flutter/material.dart';

import 'screens/login/login_screen.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  SplashScreen.routeName: (_) => SplashScreen(),
  LoginScreen.routeName: (_) => LoginScreen()
};
