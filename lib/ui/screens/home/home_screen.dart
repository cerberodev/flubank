import 'package:flubank/ui/screens/barscreen/barscreen1.dart';
import 'package:flubank/ui/shared/constants.dart';
import 'package:flubank/ui/widgets/button_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'homeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
            children: [
              BarScreenFirst(),
              OffertScreen(),
              BarScreenFirst(),
              BarScreenFirst(),
              BarScreenFirst(),
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


