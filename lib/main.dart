import 'package:flubank/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

import 'ui/shared/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FluBank',
      theme: lightTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: appRoutes,
    );
  }
}
