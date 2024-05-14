import 'dart:ffi';

import 'package:flutter/material.dart';

class Item {
  late String name;
  late double price;
  late int quantity;

  Item({required this.name, required this.price, required this.quantity});

  double getPrice() {
    return quantity * price;
  }
}
