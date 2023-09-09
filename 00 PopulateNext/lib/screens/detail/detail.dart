
import 'package:flutter/material.dart';
import 'package:populate_next_app/screens/detail/widget/food_img.dart';


import 'package:populate_next_app/constants/colors.dart';
import 'package:populate_next_app/models/food.dart';

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
              height: 40,
            ),
            FoodImg(food),
            FoodDetail(food),
           
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
      //  floatingActionButton: floatingButton(food: food),
      //  bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: false, // <-- HERE
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      onTap: (value) {
 



      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.apps_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.analytics_rounded), label: ""),
      ],
    );
  }
}
