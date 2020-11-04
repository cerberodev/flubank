import 'package:flubank/ui/shared/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'homeScreen';
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('FluBank'),
            RaisedButton(
              color: AppColors.mainColor,
              child: Text(
                'Cerrar cesión',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
