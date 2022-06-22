import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurant restaurant;
  FoodList(this.selected, this.callback, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();

    return Container(
        height: 70,
        padding: EdgeInsets.symmetric(vertical: 15),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 25),
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () => callback(index),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected == index ? kPrimartColor : Colors.white,
                    ),
                    child: Text(
                      category[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
            separatorBuilder: (_, index) => SizedBox(
                  width: 10,
                ),
            itemCount: category.length));
  }
}
