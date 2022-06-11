import 'package:Travel_Utt/screen/home/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Pridi',
            backgroundColor: Color(0xfffefefe),
            primaryColor: Color(0xFFf36f7c),
            accentColor: Color(0xFFfff2f3)),
        home: HomePage());
  }
}
