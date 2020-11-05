import 'package:card_scanner/card_scanner.dart';
import 'package:card_scanner/models/card_details.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:permission_handler/permission_handler.dart';

class CardScannerBar extends StatefulWidget {
  CardScannerBar({Key key}) : super(key: key);

  @override
  _CardScannerBarState createState() => _CardScannerBarState();
}

class _CardScannerBarState extends State<CardScannerBar> {
  CardDetails _cardDetails;

  Future<void> scanCard() async {
    var cardDetails = await CardScanner.scanCard(
        scanOptions: CardScanOptions(scanCardHolderName: true));

    if (!mounted) return;
    setState(() {
      _cardDetails = cardDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          onPressed: () async {
            var status = await Permission.camera.request();
            if (status == PermissionStatus.granted) {
              scanCard();
            }
          },
          child: Text('scan card'),
        ),
        Text('$_cardDetails')
      ],
    );
  }
}
