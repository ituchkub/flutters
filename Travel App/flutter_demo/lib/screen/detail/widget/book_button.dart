import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Container(),
      Container(
        height: 40,
        width: 50,
        margin: EdgeInsets.only(bottom: 15, right: 30),
        // padding: EdgeInsets.only(right: 30, bottom: 15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Theme.of(context).accentColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          onPressed: () {
            print('5555');
          },
          child: Container(
              //    padding: EdgeInsets.symmetric(vertical: 8),
              child: Icon(
            Icons.near_me,
            color: Colors.black54,
            size: 20,
          )),
        ),
      ),
    ]);
  }
}
