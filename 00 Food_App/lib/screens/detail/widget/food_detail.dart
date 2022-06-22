
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

import 'package:food_delivery_app/models/food.dart';
import 'food_quantity.dart';

class FoodDetail extends StatelessWidget {
  final Food food;

  FoodDetail(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 25),
        color: kBackground,
        child: Column(
          children: [
            Text(
              food.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconText(
                    Icons.access_time_outlined, Colors.blue, food.waitTime),
                _buildIconText(
                    Icons.star_outlined, Colors.amber, food.score.toString()),
                _buildIconText(
                    Icons.local_fire_department_outlined, Colors.red, food.cal)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            FoodQuantity(food),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'ส่วนผสม',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(children: [
                          Image.asset(
                            food.ingredients[index].values.first,
                            width: 45,
                          ),
                          Text(food.ingredients[index].keys.first)
                        ]),
                      ),
                  separatorBuilder: (_, index) => SizedBox(width: 15),
                  itemCount: food.ingredients.length),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
             
              children: [
                Text(
                  'รายละเอียด',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              food.about,
              style: TextStyle(
                wordSpacing: 1.2,
                height: 1.5,
                fontSize: 16,
              ),
            )
          ],
        ));
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
