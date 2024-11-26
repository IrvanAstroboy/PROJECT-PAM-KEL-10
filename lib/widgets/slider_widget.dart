import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class SliderWidget extends StatelessWidget {
  final List<String> sliderImages;

  SliderWidget({required this.sliderImages});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: PageView.builder(
        itemCount: sliderImages.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              // Gambar latar
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(sliderImages[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Gradient dan konten di atas gambar
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Ikon di kanan atas
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
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
                      // Teks "Our New Products"
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FadeInUp(
                              duration: Duration(milliseconds: 1500),
                              child: Text(
                                "Our New Products",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            FadeInUp(
                              duration: Duration(milliseconds: 1700),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "VIEW MORE",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
