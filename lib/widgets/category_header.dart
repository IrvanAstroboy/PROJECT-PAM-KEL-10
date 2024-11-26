// category_header.dart
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CategoryHeader extends StatelessWidget {
  final String title;
  final String image;
  final String tag;

  const CategoryHeader({Key? key, required this.title, required this.image, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: Material(
        child: Container(
          height: 360,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1),
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      children: <Widget>[
                        FadeInUp(
                          duration: Duration(milliseconds: 1200),
                          child: IconButton(
                            icon: Icon(Icons.search, color: Colors.white),
                            onPressed: () {},
                          ),
                        ),
                        FadeInUp(
                          duration: Duration(milliseconds: 1200),
                          child: IconButton(
                            icon: Icon(Icons.favorite, color: Colors.white),
                            onPressed: () {},
                          ),
                        ),
                        FadeInUp(
                          duration: Duration(milliseconds: 1300),
                          child: IconButton(
                            icon: Icon(Icons.shopping_cart, color: Colors.white),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                FadeInUp(
                  duration: Duration(milliseconds: 1200),
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
