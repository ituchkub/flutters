import 'package:Travel_Utt/model/place.dart';
import 'package:Travel_Utt/screen/detail/widget/abour.dart';
import 'package:Travel_Utt/screen/detail/widget/my_header.dart';
import 'package:flutter/material.dart';

import 'widget/book_button.dart';
import 'widget/check_out_card.dart';
import 'widget/feature_list.dart';
import 'widget/page_name.dart';

class DetailPage extends StatelessWidget {
  final Place place;
  DetailPage(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
          child: Column(children: [
        MyHeader(place.imageUrl),
        PageName(place.fulltitle, place.addredd),
        About(place.detail),
        SizedBox(
          height: 20,
        ),
        //FeatureList(""),
       // BookButton()
      ])),
       bottomNavigationBar: CheckoutCard()
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     backgroundColor:  Theme.of(context).accentColor,,
      //     // elevation: 3,
      //     child: Icon(
      //       Icons.shopping_bag_outlined,
      //       color: Colors.black,
      //       size: 30,
      //     )),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: false, // <-- HERE
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      // onTap: (value) {
      //   setState(() {
      //     _selectedIndex = value;
      //   });
      // },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.apps_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.analytics_rounded), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.assignment_ind), label: ""),
      ],
    );
  }
}
