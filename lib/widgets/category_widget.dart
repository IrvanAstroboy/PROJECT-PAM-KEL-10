import 'package:flutter/material.dart';
import 'package:tutorial/pages/CategoryPage.dart';

class CategoryWidget extends StatelessWidget {
  final Map<String, List<Map<String, String>>> productsByCategory = {
    'Nike': [
      {'title': 'Air Max', 'price': '200\$', 'image': 'assets/images/nike_air_max.jpg'},
      // Add more Nike products here
    ],
    'New Balance': [
      {'title': 'NB 990', 'price': '150\$', 'image': 'assets/images/nb_990.jpg'},
      // Add more New Balance products here
    ],
    'Vans': [
      {'title': 'Vans Old Skool', 'price': '70\$', 'image': 'assets/images/vans_old_skool.jpg'},
      // Add more Vans products here
    ],
    'Onitsuka Tiger': [
      {'title': 'Mexico 66', 'price': '80\$', 'image': 'assets/images/onitsuka_mexico.jpg'},
      // Add more Onitsuka products here
    ],
    'Adidas': [
      {'title': 'Samba', 'price': '100\$', 'image': 'assets/images/adidas_samba.jpg'},
      // Add more Adidas products here
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          makeCategory(
            context,
            image: 'assets/images/NIke.jpg',
            title: 'Nike',
            tag: 'nike',
          ),
          makeCategory(
            context,
            image: 'assets/images/New_balance.jpg',
            title: 'New Balance',
            tag: 'nb',
          ),
          makeCategory(
            context,
            image: 'assets/images/Vans.jpg',
            title: 'Vans',
            tag: 'vans',
          ),
          makeCategory(
            context,
            image: 'assets/images/onitsuka_pp.jpg',
            title: 'Onitsuka Tiger',
            tag: 'onitsuka',
          ),
          makeCategory(
            context,
            image: 'assets/images/samba_profile.jpg',
            title: 'Adidas',
            tag: 'adidas',
          ),
        ],
      ),
    );
  }

  Widget makeCategory(BuildContext context, {required String image, required String title, required String tag}) {
    return AspectRatio(
      aspectRatio: 2 / 2.2,
      child: Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryPage(
                  image: image,
                  title: title,
                  tag: tag,
                  products: productsByCategory[title] ?? [],
                ),
              ),
            );
          },
          child: Material(
            child: Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.0),
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
