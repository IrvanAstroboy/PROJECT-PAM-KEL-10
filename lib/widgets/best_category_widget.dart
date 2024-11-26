import 'package:flutter/material.dart';

class BestCategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          makeBestCategory(
            image: 'assets/images/samba_hitam.jpg',
            title: 'Adidas Samba',
          ),
          makeBestCategory(
            image: 'assets/images/Samba_biru.jpg',
            title: 'Adidas Samba',
          ),
          makeBestCategory(
            image: 'assets/images/nikee.jpg',
            title: 'Nike Air',
          ),
          makeBestCategory(
            image: 'assets/images/onitsuka_pp.jpg',
            title: 'Onitsuka Tiger',
          ),
        ],
      ),
    );
  }

  Widget makeBestCategory({required String image, required String title}) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
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
    );
  }
}
