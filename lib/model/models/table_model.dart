import 'package:flutter/material.dart';

class TableModel {
  final String tableNumber;
  final String statusString;
  final Color statusColor;
  const TableModel({
    required this.tableNumber,
    required this.statusString,
    required this.statusColor,
  });
}
