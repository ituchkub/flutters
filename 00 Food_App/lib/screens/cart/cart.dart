import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

import 'package:food_delivery_app/models/restaurant.dart';

import '../../models/globals.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var selected = 0;
  var forder = 0;

  final AllFood = Restaurant.generateAllFoods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomAppBars(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(0.0),
                itemCount: listPfoods.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            width: 90,
                            //  height: 90,
                            child: Image.asset(
                              listPfoods[index].imgUrl,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.only(
                                    top: 20, left: 10, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          listPfoods[index].name,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              height: 1.5),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          listPfoods[index].price,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          ' ฿ /',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        Text(
                                          listPfoods[index].unit,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          Align(
                            alignment: Alignment(0, 0),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 15),
                              height: double.maxFinite,
                              width: 70,
                              decoration: BoxDecoration(
                                  //color: kPrimartColor,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          Text(
                                              listPfoods[index]
                                                  .order
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold)),
                                          Text(
                                            ' '+listPfoods[index].unit,
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          )
                        ],
                      ));
                }),
          ),
          Container(
            height: 50,
            color: kBackground,
          )
        ],
      ),
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
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop(this);
              //  Navigator.of(context)
              //       .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
                height: 40,
                padding: EdgeInsets.only(left: 13, top: 8, bottom: 8, right: 4),
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(8)),
                child: Icon(Icons.arrow_back_ios)),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            alignment: Alignment.center,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white60,
            ),
            child: Text(
              'รายการสินค้าในตะกร้า',
              style: TextStyle(fontSize: 18),
            ),
          )
        ]),
      ),
    );
  }
}
