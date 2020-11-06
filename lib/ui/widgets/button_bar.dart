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
            icon: Icon(
              Icons.bakery_dining,
              key: Key('tap1'),
            ),
            text: 'Home',
          ),
          Tab(
            icon: Icon(
              Icons.local_offer,
              key: Key('tap2'),
            ),
            text: 'Offert',
          ),
          Tab(
            icon: Icon(Icons.qr_code, key: Key('tap3')),
            text: 'QR',
          ),
          Tab(
            icon: Icon(
              Icons.credit_card,
              key: Key('tap4'),
            ),
            text: 'Add',
          ),
          Tab(
            icon: Icon(
              Icons.home_repair_service,
              key: Key('tap5'),
            ),
            text: 'Service',
          ),
          Tab(
            icon: Icon(
              Icons.home_repair_service,
              key: Key('tap6'),
            ),
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
