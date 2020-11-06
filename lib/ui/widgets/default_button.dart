import 'package:flubank/ui/shared/constants.dart';
import 'package:flutter/material.dart';

class AppDefaulButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final String defaulButton;
  const AppDefaulButton(
      {@required this.onTap, @required this.text, @required this.defaulButton});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      key: Key(defaulButton),
      minWidth: double.infinity,
      height: 50,
      onPressed: onTap,
      color: AppColors.mainColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
