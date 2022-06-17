import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/detail/widget/food_img.dart';
import 'package:food_delivery_app/widgets/custom_app_bart.dart';

import '../../constants/colors.dart';
import '../../models/Food.dart';
import 'widget/food_detail.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  DetailPage(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimartColor,
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(children: [
            // CustomAppBar(
            //   Icons.arrow_back_ios_new_outlined,
            //   Icons.favorite_outlined,
            //   leftCallback: () => Navigator.of(context).pop(),
            // ),
            SizedBox(
              height: 50,
            ),
            FoodImg(food),
            FoodDetail(food)
          ]),
        ),
        Positioned(
            left: 25,
            top: MediaQuery.of(context).padding.top + 3,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  padding:
                      EdgeInsets.only(left: 13, top: 8, bottom: 8, right: 4),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.arrow_back_ios)),
            )),
      ]),
      //floatingActionButton: floatingButton(food: food)
    );
  }
}

class floatingButton extends StatelessWidget {
  const floatingButton({
    Key? key,
    required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: kPrimartColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2,
          onPressed: () {},
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 30,
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Text(
                food.quantity.toString(),
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ));
  }
}
