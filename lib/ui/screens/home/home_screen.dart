import 'package:flubank/ui/screens/home/widgets/listcarditem.dart';
import 'package:flutter/material.dart';

import 'package:flubank/ui/widgets/amount.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'homeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Amount(
                'Hola Pierre, tu saldo disponible es:',
                '100',
                '\$',
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: ListCard(),
            ),
          )
        ],
      ),
    );
  }
}
