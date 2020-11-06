import 'package:flubank/ui/screens/barscreen/barscreen1.dart';
import 'package:flubank/ui/screens/barscreen/barscreen2.dart';
import 'package:flubank/ui/screens/cardscanner/cardscanner.dart';
import 'package:flubank/ui/screens/servicespayment/servicespayment.dart';
import 'package:flubank/ui/shared/constants.dart';
import 'package:flubank/ui/widgets/button_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'homeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerHeader(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              FlutterLogo(size: 80),
              SizedBox(
                height: 50,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Perfil'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Movimientos'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Ajustes'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Solicita Tu tarjeta'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Cerrar Session'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: FlutterLogo(size: 50),
      ),
      body: DefaultTabController(
        length: 6,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('tRANSFER');
            },
            backgroundColor: AppColors.mainDarkColor,
            child: Icon(Icons.payments_sharp),
          ),
          body: TabBarView(
            children: [
              BarScreenFirst(),
              BarScreenSecond(),
              BarScreenFirst(),
              CardScannerBar(),
              ServicesPayment(),
              Container(),
            ],
          ),
          bottomNavigationBar: ButtomBar(),
        ),
      ),
    );
  }

  Widget OffertScreen() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Card(
            color: AppColors.accentColor,
            child: Text('hola', style: TextStyle(fontSize: 18.0)),
          ),
        ),
      ],
    );
  }
}


