import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatelessWidget {
  var _images = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(
            items: [
          Image(
            image: AssetImage(_images[0]),
          ),
          Image(
            image: AssetImage(_images[1]),
          ),
          Image(
            image: AssetImage(_images[2]),
          ),
          Image(
            image: AssetImage(_images[3]),
          ),
        ],
            options: CarouselOptions(
                initialPage: 0,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                scrollDirection: Axis.vertical,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3))));
  }
}
