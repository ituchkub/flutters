import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final String detail;

  About(this.detail);

  @override
  Widget build(BuildContext context) {
    return Container(
    //  margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Text('รายละเอียด',
        //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5,
        ),
        Text(detail,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.grey[600],
              height: 1.5,
              fontSize: 14,
            )),
        SizedBox(
          height: 5,
        ),
        // Text('Readmore')
      ]),
    );
  }
}
