import 'package:flubank/ui/screens/barscreen/barscreen1.dart';
import 'package:flubank/ui/screens/barscreen/barscreen2.dart';
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
              BarScreenSecond(),
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
}
