import 'package:populate_next_app/models/food.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:populate_next_app/constants/colors.dart';
import 'package:populate_next_app/providers/counter_provider.dart';

class FoodQuantity extends StatefulWidget {
  final Food foods;

  FoodQuantity(this.foods);

  @override
  State<FoodQuantity> createState() => _FoodQuantityState();
}

class _FoodQuantityState extends State<FoodQuantity> {
  var forder = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40,
      child: Stack(children: [
        Align(
          alignment: Alignment(-0.5, 0),
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
                widget.foods.price.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ),
        Align(
          alignment: Alignment(0.5, 0),
          child: GestureDetector(
            onTap: () {
             // context.read<Counter>().purchaseinc();

              widget.foods.order = forder;

              context.read<Counter>().listFoodAdds(widget.foods);

              // globalfood.add(widget.foods);
              ///print(context.read<Counter>().purchase);

              Navigator.of(context).pop();
            },
            child: Container(
              width: 80,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  'สั่งซื้อ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, 0),
          child: Container(
            height: double.maxFinite,
            width: 80,
            decoration: BoxDecoration(
                color: kPrimartColor, borderRadius: BorderRadius.circular(30)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (forder > 0) forder = forder - 1;
                      });
                      //   print(forder);
                    },
                    child: Text(
                      '-',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Text(forder.toString(),
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        forder = forder + 1;
                      });

                      // print(forder);
                    },
                    child: Text(
                      '+',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
          ),
        )
      ]),
    );
  }
}
