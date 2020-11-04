import 'package:flubank/ui/shared/constants.dart';
import 'package:flubank/ui/widgets/amount.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Amount(
              'Hola Pierre, tu saldo disponible es:',
              '100',
              '\$',
            ),
            const SizedBox(height: 20),
            Amount(
              'Hola Pierre, tu saldo disponible es:',
              '100',
              '\$',
            ),
            const SizedBox(height: 20),
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
