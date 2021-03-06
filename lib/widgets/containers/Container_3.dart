import 'package:flutter/material.dart';
import 'package:my_flutter_website/texts.dart';



Widget container_3 = Container(
                // width: 560,
                // height: 320,
                decoration: ShapeDecoration(
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                      ),
                    ),
                  ),
                padding: EdgeInsets.all(7),                
                child: Column(                  
                  children: [                    
                    CircleAvatar(
                    backgroundImage: AssetImage('flutter2.png'),
                    backgroundColor: Colors.white,
                    radius: 50.0,
                    ),
                    SizedBox(
                        height: 10,
                      ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[                      
                      SelectableText(
                        'Technologies I use',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                          letterSpacing: 2.0,              
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SelectableText(
                        technologies,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                                        
                        ),
                      ),
                    ],)
                  ],                  
                ),
              );
    