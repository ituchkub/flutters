import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageName extends StatelessWidget {
  final String title;
  final String addredd;
  PageName(this.title, this.addredd);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0, bottom: 20, left: 30, right: 30),
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36))),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    // Padding(padding: EdgeInsets.only(top: 30)),

                    Icon(
                      Icons.location_on_sharp,
                      size: 15,
                      color: Colors.red,
                    ),
                    Text(addredd, style: TextStyle(fontSize: 14))
                  ],
                )

                // Text('subtitle', style: TextStyle(fontSize: 12))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/star.svg',
                  width: 15,
                ),
                SizedBox(
                  width: 2,
                ),
                Text('4.5')
              ],
            )
          ]),
    );
  }
}
