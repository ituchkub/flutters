import 'package:Travel_Utt/model/place.dart';
import 'package:Travel_Utt/screen/detail/detail.dart';
import 'package:flutter/material.dart';

class PlaceItem extends StatelessWidget {
  final Place place;
  PlaceItem(this.place);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailPage(place)));
      },
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            height: place.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(place.imageUrl[0]), fit: BoxFit.cover)),
          ),
          Container(
            height: place.height,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withAlpha(0),
                      Colors.black.withAlpha(0),
                      Colors.black.withAlpha(0),
                      Colors.black12,
                      Colors.black87
                    ])),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      place.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
