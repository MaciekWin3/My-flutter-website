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
          Container( //przerwa
            width: 40.0, 
            color: Colors.yellow[50],            
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              container_1,
              container_2,
            ],
          ),
          Container( 
            width: 40.0, 
            color: Colors.yellow[50],            
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              container_3,
              container_4,
            ],
          ),
        ],
      ),
    );
  }
}