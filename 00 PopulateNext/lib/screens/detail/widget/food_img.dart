
import 'package:flutter/material.dart';
import 'package:populate_next_app/constants/colors.dart';

import 'package:populate_next_app/models/food.dart';

class FoodImg extends StatelessWidget {
  final Food food;
  FoodImg(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: kBackground,
                    )))
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.all(15),
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(-1, 10),
                        blurRadius: 10)
                  ]),
                  child: Hero(
                    tag: 'Food_Pic${food.imgUrl}',
                    child: Image.asset(
                      food.imgUrl,
                      fit: BoxFit.cover,
                    ),
                  )),
            )
          ],
        ));
  }
}
