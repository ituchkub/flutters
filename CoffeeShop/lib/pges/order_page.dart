import 'package:coffeeshop/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({super.key, required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double sweetValue = 0.75;
  double iceValue = 0.5;
  double pearlsValue = 0.25;
  void customizeSweet(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  void customizeIce(double newValue) {
    setState(() {
      iceValue = newValue;
    });
  }

  void customizePearls(double newValue) {
    setState(() {
      pearlsValue = newValue;
    });
  }

  void addToCart() {
    Provider.of<BubbleTeaShop>(context, listen: false).addToCart(widget.drink);

    Navigator.pop(context);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Successfully added to cart !'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.drink.name)),
      backgroundColor: Colors.brown[200],
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(widget.drink.imagePath),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 50, child: Text("Sweet")),
                      Expanded(
                        child: Slider(
                          value: sweetValue,
                          label: sweetValue.toString(),
                          divisions: 4,
                          onChanged: (value) => customizeSweet(value),
                        ),
                      )
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 50, child: Text("Ice")),
                      Expanded(
                        child: Slider(
                          value: iceValue,
                          label: iceValue.toString(),
                          divisions: 4,
                          onChanged: (value) => customizeIce(value),
                        ),
                      )
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 50, child: Text("Pearls")),
                      Expanded(
                        child: Slider(
                          value: pearlsValue,
                          label: pearlsValue.toString(),
                          divisions: 4,
                          onChanged: (value) => customizePearls(value),
                        ),
                      )
                    ])
              ],
            ),
          ),
          MaterialButton(
              child: Text(
                "Add to cart",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.brown,
              onPressed: addToCart)
        ]),
      ),
    );
  }
}
