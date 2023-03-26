import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationbar extends StatelessWidget {

  CustomBottomNavigationbar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Container(child: Column(children: []),),Container(color: Colors.amber,),Container()],
    );
  }
}
