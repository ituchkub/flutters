import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

class MyHeader extends StatelessWidget {
  final List<String> imageUrl;
  MyHeader(this.imageUrl);
  final double expandedHeight = 300;
  final double roundedContainerHeight = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      width: double.infinity,
      // decoration: BoxDecoration(
      //     image:
      //         DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover)),
      child: Stack(children: [
        ListView.separated(
            padding: EdgeInsets.all(0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //  var travel = _list[index];
              return Container(
                width: 370,
                child: Image.asset(imageUrl[index], fit: BoxFit.cover),
              );
            },
            separatorBuilder: (_, index) => SizedBox(width: 3),
            itemCount: imageUrl.length),
        Positioned(
          top: expandedHeight - roundedContainerHeight + 80,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: roundedContainerHeight,
            decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          ),
        ),

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

  // Widget buildImage(String urlImage, int index) => Container(
  //       margin: EdgeInsets.symmetric(horizontal: 12),
  //       color: Colors.grey,
  //       child: Image.asset(
  //         urlImage,
  //         fit: BoxFit.cover,
  //       ),
  //     );
}
