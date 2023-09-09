import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:populate_next_app/constants/colors.dart';
import 'package:populate_next_app/models/restaurant.dart';
import 'package:provider/provider.dart';
import 'package:populate_next_app/providers/counter_provider.dart';

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
              child: cartList(),
            ),
            Container(
              height: 50,
              color: kBackground,
            )
          ],
        ),
        floatingActionButton: (context.watch<Counter>().listfood.length == 0)
            ? Center()
            : Container(
                margin: EdgeInsets.only(right: 10, bottom: 10),
                //alignment: Alignment.,
                width: 200,
                height: 50,
                child: RawMaterialButton(
                  fillColor: kPrimartColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  elevation: 2,
                  onPressed: () {
                    Navigator.of(context).pop();
                    context.read<Counter>().resetall();
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            " จ่ายเงิน " +
                                context.watch<Counter>().AllP.toString() +
                                " บาท ",
                            // "9",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                )));
  }
}

class cartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (context.watch<Counter>().listfood.length == 0)
        ? Center(
            child: Text(
            'ไม่พบรายการสินค้าในตะกร้า',
            style: TextStyle(fontSize: 20),
          ))
        : ListView.builder(
            padding: EdgeInsets.all(0.0),
            itemCount: context.watch<Counter>().listfood.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.only(left: 20, right: 10, top: 10),
                child: Slidable(
                  key: ValueKey(index),
                  endActionPane: ActionPane(
                    //  dismissible: DismissiblePane(onDismissed: () {}),
                    motion: BehindMotion(),
                    extentRatio: 0.25,

                    children: [
                      SlidableAction(
                        onPressed: (BuildContext context) {
                          context.read<Counter>().listFoodRemove(index);
                        },
                        flex: 1,

                        borderRadius: BorderRadius.circular(30),
                        //    backgroundColor: kBackground,
                        foregroundColor: Colors.red[400],
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),

                            width: 90,

                            //  height: 90,
                            child: Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: kPrimartColor,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                context.watch<Counter>().listfood[index].imgUrl,
                                fit: BoxFit.fitHeight,
                              ),
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
                                          context
                                              .watch<Counter>()
                                              .listfood[index]
                                              .name,
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
                                          context
                                              .watch<Counter>()
                                              .listfood[index]
                                              .price
                                              .toString(),
                                          style: TextStyle(
                                              color: kPrimartColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        Text(
                                          ' ฿ /',
                                          style: TextStyle(
                                              color: kPrimartColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        Text(
                                          context
                                              .watch<Counter>()
                                              .listfood[index]
                                              .unit,
                                          style: TextStyle(
                                              color: kPrimartColor,
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
                                  vertical: 15, horizontal: 15),
                              height: double.maxFinite,
                              // width: 70,
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
                                              context
                                                  .watch<Counter>()
                                                  .listfood[index]
                                                  .order
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                          Text(
                                            ' ' +
                                                context
                                                    .watch<Counter>()
                                                    .listfood[index]
                                                    .unit,
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
                      )),
                ),
              );
            });
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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          )
        ]),
      ),
    );
  }
}

void doNothing(BuildContext context) {}
