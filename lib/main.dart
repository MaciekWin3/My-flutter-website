import 'package:flutter/material.dart';
import 'package:my_flutter_website/screens/home.dart';
import 'package:my_flutter_website/widgets/mobile.dart';
import 'package:my_flutter_website/backend/screen_sizes.dart';
import 'package:my_flutter_website/screens/responsive_widget.dart';



void main() {
  runApp(MyApp());
}
    



class MyApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {        
      return MaterialApp(    
        debugShowCheckedModeBanner: false,  
        title: 'Winnik Website',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          ),
        home: Home(),     
      );
  }
}

  