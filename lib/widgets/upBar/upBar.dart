import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:responsive_builder/responsive_builder.dart';



Widget upBar = AppBar(        
        title: Text('My Flutter Website'),
        elevation: 0,
        backgroundColor: Colors.lightBlue,
        actions: <Widget>[           
              Container(
                child: Icon(
                  AntDesign.chrome
                  )
                ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 8, 2, 1),
                              child: Text('For best experience use Google Chrome  ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                ),
            ),
              ),
          ],
    );
