import 'dart:collection';

import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier{
  String id;
  String name;
  String pack;
  String type;
  double price;

  Product({
    required this.id,
    required this.name,
    required this.pack,
    required this.type,
    required this.price,
  });
}
