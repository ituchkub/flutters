import 'package:flutter/material.dart';

class FeatureList extends StatelessWidget {
  final String imageUrl;

  FeatureList(this.imageUrl);

  final featureList = ['mark', 'compass', 'hotel', 'travel'];

  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
              width: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: currentSelect == index
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    currentSelect == index
                        ? BoxShadow()
                        : BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(0, 3))
                  ]),
              child: Icon(Icons.wifi)),
          separatorBuilder: (_, index) => SizedBox(width: 20),
          itemCount: featureList.length),
    );
  }
}
