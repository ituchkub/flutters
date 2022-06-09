import 'package:Travel_Utt/model/place.dart';
import 'package:Travel_Utt/screen/detail/widget/abour.dart';
import 'package:Travel_Utt/screen/detail/widget/my_header.dart';
import 'package:flutter/material.dart';

import 'widget/book_button.dart';
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
        //FeatureList(""),
        BookButton()
      ])),
    );
  }
}
