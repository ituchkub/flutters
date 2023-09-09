import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:populate_next_app/screens/home/home.dart';
import 'package:provider/provider.dart';

import 'providers/counter_provider.dart';

void main() {
  runApp(
    
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      
      ],
        child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        fontFamily: 'Itim',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
