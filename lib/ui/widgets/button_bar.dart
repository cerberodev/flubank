import 'package:flubank/ui/shared/constants.dart';
import 'package:flutter/material.dart';

class ButtomBar extends StatelessWidget {
  const ButtomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black38),
        ),
      ),
      child: TabBar(
        labelStyle: TextStyle(fontSize: 15),
        tabs: [
          Tab(
            icon: Icon(Icons.bakery_dining),
            text: 'Home',
          ),
          Tab(
            icon: Icon(Icons.local_offer),
            text: 'Offert',
          ),
          Tab(
            icon: Icon(Icons.qr_code),
            text: 'QR',
          ),
          Tab(
            icon: Icon(Icons.credit_card),
            text: 'Add',
          ),
          Tab(
            icon: Icon(Icons.home_repair_service),
            text: 'Service',
          ),
          Tab(
            icon: Icon(Icons.home_repair_service),
            text: 'ServTest',
          ),
        ],
        labelColor: AppColors.mainDarkColor,
        unselectedLabelColor: AppColors.secondColor,
        //indicatorSize: TabBarIndicatorSize.label,
        //isScrollable: true,
        indicatorWeight: 4,

        indicatorColor: AppColors.mainDarkColor,

        //labelPadding: EdgeInsets.all(10),
      ),
    );
  }
}
