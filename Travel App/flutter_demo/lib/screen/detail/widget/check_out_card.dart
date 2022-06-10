import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(),
      // height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
 
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Icon(
                      Icons.near_me,
                      color: Colors.black54,
                      size: 20,
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
