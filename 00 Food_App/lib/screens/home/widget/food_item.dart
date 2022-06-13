import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

import '../../../models/Food.dart';

class FoodItem extends StatelessWidget {
  final Food food;
  FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: 110,
              height: 110,
              child: Hero(
                tag: 'Food_Pic${food.imgUrl}',
                child: Image.asset(
                  food.imgUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            food.name,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                height: 1.5),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                          )
                        ],
                      ),
                      Text(food.desc,
                          style: TextStyle(
                            color: food.hightLight
                                ? kPrimartColor
                                : Colors.grey.withOpacity(0.8),
                            height: 1.5,
                          )),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            food.price,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " ฿/7 ชิ้น",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.normal),
                          )
                        ],
                      )
                    ],
                  )),
            )
          ],
        ));
  }
}
