import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

final upBar = AppBar(        
        title: Text('My Flutter Website'),
        elevation: 0,
        backgroundColor: Colors.lightBlue,
        actions: <Widget>[           
              Container(
                child: Icon(
                  AntDesign.chrome
                  )
                ),
              Text('\n   For best experience use Google Chrome',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),                        
          ],
        
);