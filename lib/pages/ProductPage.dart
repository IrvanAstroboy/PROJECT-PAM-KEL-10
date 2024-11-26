import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String? title;
  final String? price;
  final String? image;

  const ProductPage({Key? key, this.title, this.price, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(image!),
            SizedBox(height: 20),
            Text(
              title!,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              price!,
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
