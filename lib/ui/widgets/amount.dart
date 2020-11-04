import 'package:flubank/ui/shared/constants.dart';
import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  const Amount(this.title, this.amount, this.currency);

  final String title;
  final String amount;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.accentColor),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Text(title),
          ),
          Expanded(
            child: Container(
              height: 100,
              child: Card(
                child: Center(
                    child: Text(
                  '$amount ' + '$currency',
                  style: TextStyle(fontSize: 32),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
