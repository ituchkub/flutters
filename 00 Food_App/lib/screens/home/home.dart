import 'dart:async';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/home/widget/food_list.dart';
import 'package:food_delivery_app/screens/home/widget/food_list_view.dart';
import 'package:food_delivery_app/screens/home/widget/restaurant_info.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../models/StoreClass.dart';

import '../../providers/counter_provider.dart';
import '../../widgets/custom_app_bart.dart';
import '../cart/cart.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;

  final pageController = PageController();
  final restaurant = Restaurant.gennetateRestaurant();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackground,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomAppBars(),
          RestauranInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });

            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
              child: FoodListView(selected, (int index) {
            setState(() {
              selected = index;
            })
            ;
          }, pageController, restaurant)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                      width: 8,
                      height: 8,
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8)),
                  activeDotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: kBackground,
                    borderRadius: BorderRadius.circular(8),
                    dotBorder:
                        DotBorder(color: kPrimartColor, padding: 2, width: 2),
                  )),
              // onDotClicked: (index) => pageController.jumpToPage(index)
            ),
          )
        ]),
        floatingActionButton: Container(
            //  margin: EdgeInsets.only(right: 5),
            width: 80,
            height: 50,
            child: RawMaterialButton(
              fillColor: kPrimartColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 2,
              onPressed: () {
                //     Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => CartPage()));
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                      size: 22,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Text(
                        context.watch<Counter>().purchase.toString(),
                        // "9",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ))
            
            
            );
  }
}

class CustomAppBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 10,
        left: 25,
        right: 25,
      ),
      child: Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 22,
              ),
              Text('  UTTARADIT')
            ],
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Icon(Icons.menu),
          )
        ]),
      ),
    );
  }
}
