import 'package:flubank/screens/login/widgets/form.dart';
import 'package:flutter/material.dart';

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            _pageTitle(),
            SizedBox(height: 10),
            _pageSubtitle(),
            SizedBox(height: 80),
            LoginForm(),
          ],
        ),
      ),
    );
  }

  Text _pageSubtitle() {
    return Text(
      'Ingresa con tu email o con tus redes sosiales',
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
