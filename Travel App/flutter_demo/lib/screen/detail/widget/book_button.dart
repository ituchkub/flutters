import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Container(),
      Container(
        width: 150,
        margin: EdgeInsets.only(bottom: 15),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          onPressed: () {},
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: Text(
                'นำทาง',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
        ),
      ),
    ]);
  }
}
