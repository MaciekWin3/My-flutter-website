import 'package:flutter/material.dart';
import 'package:my_flutter_website/screens/responsive_widget.dart';
import 'package:my_flutter_website/widgets/leftPanel/leftPanel.dart';
import 'package:my_flutter_website/widgets/mobile.dart';
import 'package:my_flutter_website/widgets/upBar/upBar.dart';
import 'package:my_flutter_website/widgets/containers/Container_1.dart';
import 'package:my_flutter_website/widgets/containers/Container_2.dart';
import 'package:my_flutter_website/widgets/containers/Container_3.dart';
import 'package:my_flutter_website/widgets/containers/Container_4.dart';
import 'package:my_flutter_website/widgets/upBar/upBar_mobile.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {
  Widget build(BuildContext context) {      
    return ResponsiveWidget(
      largeScreen: Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(35.0), // here the desired height
          child: ResponsiveWidget.isLargeScreen(context) ? upBar : upBar_mobile
          ),   // <= górny panel
      body: ResponsiveWidget.isLargeScreen(context) ? Row(          
          children: <Widget>[
          LeftPanel(), // <= cały leftPanel 
          Expanded(
            flex: 1,
              child: Container(              
              color: Colors.yellow[50],            
            ),
          ),
          Expanded(
            flex: 12,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: SizedBox(), flex : 1),
                Expanded(child: container_1, flex: 12),
                Expanded(child: SizedBox(), flex: 1),
                Expanded(child: container_2, flex: 12),
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
            flex: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: SizedBox(), flex : 1),
                Expanded(child: container_3, flex: 12),
                Expanded(child: SizedBox(), flex: 1),
                Expanded(child: container_4, flex: 12),
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
      ) : LeftPanelMobile(),
      
      ),
      
    );
  }
}