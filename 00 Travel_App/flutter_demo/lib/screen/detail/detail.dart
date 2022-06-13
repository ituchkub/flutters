import 'package:Travel_Utt/model/place.dart';
import 'package:Travel_Utt/screen/detail/widget/abour.dart';
import 'package:Travel_Utt/screen/detail/widget/my_header.dart';
import 'package:flutter/material.dart';



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
      body: Stack(children: [
        SingleChildScrollView(
            child: Column(children: [
          MyHeader(place.imageUrl),
          PageName(place.fulltitle, place.addredd),
         
           FeatureList(""),
          About(place.detail),
          SizedBox(
            height: 30,
          ),
         
          // BookButton()
        ])),
        Positioned(
            left: 10,
            top: MediaQuery.of(context).padding.top + 10,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.arrow_back_ios)),
            )),
      ]),
    
       bottomNavigationBar: CusNavigationBar(place)
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
     
        BottomNavigationBarItem(icon: Icon(Icons.assignment_ind), label: ""),
      ],
    );
  }
}
