import 'package:coffeeshop/components/drink_title.dart';
import 'package:coffeeshop/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/drink.dart';
import 'order_page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void goToOrderpge(Drink drink) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OrderPage(drink: drink),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(
      builder: (context, value, child) => SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          Text(
            "Bubble Tea Shop",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: value.shop.length,
                  itemBuilder: (context, index) {
                    Drink individualDrink = value.shop[index];

                    return DrinkTitle(
                      drink: individualDrink,
                      onTap: () => goToOrderpge(individualDrink),
                      trailing: const Icon(Icons.arrow_forward),
                    );
                  }))
        ]),
      )),
    );
  }
}
