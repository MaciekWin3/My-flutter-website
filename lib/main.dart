import 'package:flutter/material.dart';
import 'package:my_flutter_website/screens/home.dart';
import 'package:my_flutter_website/screens/loading.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes:{
      //   '/': (context) => Loading(),
      //   '/home': (context) => Home(),
      // },
      title: 'Winnik Website',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home()
    );
  }
}