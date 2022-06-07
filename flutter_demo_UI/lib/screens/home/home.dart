import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/home/widget/food_list.dart';
import 'package:food_delivery_app/screens/home/widget/food_list_view.dart';
import 'package:food_delivery_app/screens/home/widget/restaurant_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/custom_app_bart.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.gennetateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomAppBar(Icons.arrow_back_ios_new_outlined, Icons.search_outlined),
        RestauranInfo(),
        FoodList(selected, (int index) {
          setState(() {
            selected = index;
          });
          pageController.jumpTo(index.toDouble());
        }, restaurant),
        Expanded(
            child: FoodListView(selected, (int index) {
          setState(() {
            selected = index;
          });
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
              onDotClicked: (index) => pageController.jumpToPage(index)),
        )
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kPrimartColor,
          elevation: 2,
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 30,
          )),
    );
  }
}
