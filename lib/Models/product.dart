import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart' as http;

class Product {
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

class Products with ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products {
    return [..._products];
  }

  Future<void> AddProduct(Product prod) async {
    print('hu gya');
    print(prod.id);
    DatabaseReference ref = FirebaseDatabase.instance.ref("products");

    var id1 = ref.push();

    await id1.set({
      'id': prod.id,
      "name": prod.name,
      'pack': prod.pack,
      'type': prod.type,
      'price': prod.price,
    });

    // DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");

    // var response = await ref.set({
    //   "name": "John",
    //   "age": 19,
    //   "address": {"line1": "100 Mountain View"}
    // });
  }
}
