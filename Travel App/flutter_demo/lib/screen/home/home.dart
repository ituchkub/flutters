import 'package:Travel_Utt/screen/home/widget/place_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widget/category_list.dart';
import 'widget/place_staggered_gridview.dart';
import 'widget/search_input.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          appBar: buildAppBar(context),
          body: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                //    SearchInput(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text('Explore the world\nwith us !',
                      style: TextStyle(
                          fontFamily: 'Georgia',
                          height: 1.3,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20,
                ),
                CategoryList(),
                SizedBox(
                  height: 10,
                ),
                PlaceStaggerdFridView()
              ])),
          bottomNavigationBar: buildBottomNavigationBar()),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
      title: Container(
        child: Row(children: [
          Text("Hey!", style: TextStyle(color: Colors.black54, fontSize: 16)),
          Text("  Everyone.",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ]),
      ),
      actions: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Image.asset(
            'assets/images/user.png',
            width: 36,
          ),
        )
      ],
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: false, // <-- HERE
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.apps_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.analytics_rounded), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.assignment_ind), label: ""),
      ],
    );
  }
}
