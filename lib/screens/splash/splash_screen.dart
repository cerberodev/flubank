import 'package:flutter/material.dart';

import 'widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'splashPage';
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenBody(),
    );
  }
}
