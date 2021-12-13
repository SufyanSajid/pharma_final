import 'package:flutter/material.dart';
import 'package:pharma/Screens/add_product_screen.dart';
import 'package:pharma/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharmacy'),
        backgroundColor: kPrimaryColor,
        elevation: 20,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          letterSpacing: 5,
          fontSize: 20,
          fontFamily: 'Storytime',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            menuCard(
              icon: Icons.add_comment,
              title: 'Add product',
              ontap: () {
                Navigator.of(context).pushNamed(AddProductScreen.routeName);
              },
            ),
            menuCard(
              icon: Icons.print,
              title: 'Create Invoice',
              ontap: () {},
            ),
            menuCard(
              icon: Icons.storage_outlined,
              title: 'Products',
              ontap: () {},
            ),
            menuCard(
              icon: Icons.face,
              title: 'Aivee',
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class menuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  VoidCallback ontap;

  menuCard({required this.icon, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
        shadowColor: kPrimaryColor,
        elevation: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(color: kPrimaryColor, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
