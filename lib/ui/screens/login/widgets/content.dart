import 'package:flubank/ui/screens/login/widgets/form.dart';
import 'package:flutter/material.dart';

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlutterLogo(size: 80),
          _pageTitle(),
          SizedBox(height: 10),
          _pageSubtitle(),
          SizedBox(height: 20),
          LoginForm(),
        ],
      ),
    );
  }

  Text _pageSubtitle() {
    return Text(
      'Ingresa con tu email o con tus redes sociales',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18),
    );
  }

  Text _pageTitle() {
    return Text(
      'Bienvenido de vuelta',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
