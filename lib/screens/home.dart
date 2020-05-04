import 'package:flutter/material.dart';
import 'package:my_flutter_website/backend/quote.dart';
import 'package:my_flutter_website/texts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_flutter_website/widgets/leftPanel/leftPanel.dart';
import 'package:my_flutter_website/widgets/upBar/upBar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:my_flutter_website/widgets/containers/Container_1.dart';
import 'package:my_flutter_website/widgets/containers/Container_2.dart';
import 'package:my_flutter_website/widgets/containers/Container_3.dart';
import 'package:my_flutter_website/widgets/containers/Container_4.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: upBar,   // <= górny panel
      body: Row(          
          children: <Widget>[
          LeftPanel(), // <= cały leftPanel 
          Expanded(
            flex: 1,
              child: Container(              
              color: Colors.yellow[50],            
            ),
          ),
          Expanded(
            flex: 8,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: SizedBox(), flex : 1),
                Expanded(child: container_1, flex: 9),
                Expanded(child: SizedBox(), flex: 1),
                Expanded(child: container_2, flex: 9),
                Expanded(child: SizedBox(), flex: 1),
              ],
            ),
          ),
          Expanded(
            flex: 1,
              child: Container(              
              color: Colors.yellow[50],            
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: SizedBox(), flex : 1),
                Expanded(child: container_3, flex: 9),
                Expanded(child: SizedBox(), flex: 1),
                Expanded(child: container_4, flex: 9),
                Expanded(child: SizedBox(), flex: 1),
              ],
            ),
          ),
          Expanded(
            flex: 1,
              child: Container(              
              color: Colors.yellow[50],            
            ),
          ),
        ],
      ),
    );
  }
}