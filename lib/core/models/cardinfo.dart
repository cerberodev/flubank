import 'package:flutter/material.dart';

class CardInfo {
  final String cliente;
  final double saldo;
  final String currency;
  final Color startColor;
  final Color endColor;

  CardInfo(
      this.cliente, this.saldo, this.startColor, this.endColor, this.currency);
}
