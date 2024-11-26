import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:tutorial/widgets/slider_widget.dart';
import 'package:tutorial/widgets/category_widget.dart';
import 'package:tutorial/widgets/best_category_widget.dart';
import 'package:tutorial/autentikasi/login.dart'; // Import halaman login

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List<String> _sliderImages = [
    'assets/images/onitsuka.jpg',
    'assets/images/samba_profile.jpg',
    'assets/images/nikee.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Navigasi ke halaman login
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Slider yang dapat digeser
            FadeInUp(
              duration: Duration(milliseconds: 1000),
              child: SliderWidget(sliderImages: _sliderImages),
            ),
            FadeInUp(
              duration: Duration(milliseconds: 1400),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    // Bagian Kategori
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Categories",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("All"),
                      ],
                    ),
                    SizedBox(height: 20),
                    CategoryWidget(),
                    SizedBox(height: 40),
                    // Bagian Best Selling
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Best Selling by Category",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("All"),
                      ],
                    ),
                    SizedBox(height: 20),
                    BestCategoryWidget(),
                    SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
