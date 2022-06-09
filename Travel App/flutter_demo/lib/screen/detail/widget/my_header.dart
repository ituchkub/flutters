import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

class MyHeader extends StatelessWidget {
  final String imageUrl;

  MyHeader(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover)),
      child: Stack(children: [
        Positioned(
            left: 15,
            top: MediaQuery.of(context).padding.top,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.arrow_back_ios)),
            )),
        // Positioned(
        //     right: 20,
        //     bottom: 5,
        //     child: Container(
        //         child: Container(
        //             padding: EdgeInsets.all(8),
        //             decoration: BoxDecoration(
        //                 color: Colors.white,
        //                 borderRadius: BorderRadius.circular(36)),
        //             child: Icon(
        //               Icons.headphones,
        //               color: Colors.red,
        //             ))))
      ]),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
}
