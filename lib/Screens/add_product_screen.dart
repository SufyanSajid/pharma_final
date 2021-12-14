import 'package:flutter/material.dart';
import 'package:pharma/Models/product.dart';
import 'package:pharma/constant.dart';
import 'package:pharma/widgets/drop_downfeild.dart';
import 'package:provider/provider.dart';

class AddProductScreen extends StatelessWidget {
  static const routeName = '/addproduct';

  var newProduct = Product(id: '', name: '', pack: '', type: '', price: 0);
  final _formKey = GlobalKey<FormState>();

  void trySubmit() {
    var isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      print(newProduct.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: const Text(
                      ' Name',
                    ),
                    labelStyle: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                    ),
                    contentPadding: const EdgeInsets.all(5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                          color: kPrimaryColor,
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                          color: kPrimaryColor,
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                          color: kPrimaryColor,
                          width: 2,
                          style: BorderStyle.solid),
                    ),
                  ),
                  cursorColor: kPrimaryColor,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Cant be Null';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    newProduct = Product(
                      id: newProduct.id,
                      name: value!,
                      pack: newProduct.pack,
                      type: newProduct.type,
                      price: newProduct.price,
                    );
                  },
                ),
              ),
              //2
              Container(
                margin: EdgeInsets.only(top: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: const Text(
                      'Pack',
                    ),
                    labelStyle: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                    ),
                    contentPadding: const EdgeInsets.all(5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                          color: kPrimaryColor,
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                          color: kPrimaryColor,
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                          color: kPrimaryColor,
                          width: 2,
                          style: BorderStyle.solid),
                    ),
                  ),
                  cursorColor: kPrimaryColor,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Cant be Null';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    newProduct = Product(
                      id: newProduct.id,
                      name: newProduct.name,
                      pack: value!,
                      type: newProduct.type,
                      price: newProduct.price,
                    );
                  },
                ),
              ),
              //3
              Container(
                margin: EdgeInsets.only(top: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: const Text(
                      'Price',
                    ),
                    labelStyle: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                    ),
                    contentPadding: const EdgeInsets.all(5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                          color: kPrimaryColor,
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                          color: kPrimaryColor,
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                          color: kPrimaryColor,
                          width: 2,
                          style: BorderStyle.solid),
                    ),
                  ),
                  cursorColor: kPrimaryColor,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Cant be Null';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    newProduct = Product(
                      id: newProduct.id,
                      name: newProduct.name,
                      pack: newProduct.pack,
                      type: newProduct.type,
                      price: double.parse(value!),
                    );
                  },
                ),
              ),
              //4
              DropDownField(),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      trySubmit();
                      // Provider.of<Products>(context, listen: false)
                      //     .AddProduct(newProduct);
                    },
                    icon: Icon(Icons.add_business),
                    label: Text('Add product'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
