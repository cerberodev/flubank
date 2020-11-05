import 'package:flubank/ui/shared/constants.dart';
import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppColors.mainColor,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset('assets/images/fedex-express.png'),
        ),
      ),
      title: Text('Paga tu servicio telefonico'),
      subtitle: Text('Aplica para antes de las 7pm'),
      onTap: () {
        print('Payment your services');
      },
    );
  }
}
