import 'package:flubank/ui/screens/home/widgets/listcarditem.dart';
import 'package:flubank/ui/widgets/amount.dart';
import 'package:flutter/material.dart';

class BarScreenFirst extends StatelessWidget {
  const BarScreenFirst({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
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
    );
  }
}
