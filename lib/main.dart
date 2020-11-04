import 'package:flutter/material.dart';

import 'routes.dart';
import 'screens/splash/splash_screen.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      theme: lightTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: appRoutes,
    );
  }
}
