import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/Food.dart';

class FoodQuantity extends StatelessWidget {
  final Food food;
  FoodQuantity(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40,
      child: Stack(children: [
        Align(
          alignment: Alignment(-0.25, 0),
          child: Container(
            width: 80,
            height: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(30)),
            child: Row(children: [
              SizedBox(
                width: 15,
              ),
              Text(
                '\$',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Text(
                food.price,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ),
        Align(
          alignment: Alignment(0.3, 0),
          child: Container(
            height: double.maxFinite,
            width: 100,
            decoration: BoxDecoration(
                color: kPrimartColor, borderRadius: BorderRadius.circular(30)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '-',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Text('1', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    '+',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ]),
          ),
        )
      ]),
    );
  }
}
