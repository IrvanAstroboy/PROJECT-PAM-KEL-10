import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/pages/ProductPage.dart';
import 'package:tutorial/widgets/category_header.dart';
import 'package:tutorial/widgets/product_item.dart';

class CategoryPage extends StatefulWidget {
  final String? title;
  final String? image;
  final String? tag;
  final List<Map<String, String>> products;

  const CategoryPage({Key? key, this.title, this.image, this.tag, required this.products}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CategoryHeader(
              title: widget.title!,
              image: widget.image!,
              tag: widget.tag!,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  FadeInUp(
                    duration: Duration(milliseconds: 1400),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "New Product",
                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Text("View More", style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_forward_ios, size: 11, color: Colors.grey),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: widget.products.map((product) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProductPage(
                              title: product['title']!,
                              price: product['price']!,
                              image: product['image']!,
                            )),
                          );
                        },
                        child: FadeInUp(
                          duration: Duration(milliseconds: 1500),
                          child: ProductItem(
                            image: product['image']!,
                            title: product['title']!,
                            price: product['price']!,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
