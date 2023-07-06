import 'package:flutter/material.dart';

class OrderStatusModel {
  final String tableNumber, statusString;
  final Color statusColor;
  const OrderStatusModel(
      {required this.tableNumber,
      required this.statusColor,
      required this.statusString});
}
