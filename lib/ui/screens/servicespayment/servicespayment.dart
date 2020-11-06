import 'package:flubank/ui/screens/servicespayment/widget/serviceitem.dart';
import 'package:flutter/material.dart';

class ServicesPayment extends StatelessWidget {
  const ServicesPayment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ServiceItem();
      },
    );
  }
}
