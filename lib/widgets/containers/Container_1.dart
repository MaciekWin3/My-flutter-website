import 'package:flutter/material.dart';
import 'package:my_flutter_website/texts.dart';


Widget container_1 = Container(
                width: 560,
                height: 320,
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
                    backgroundImage: AssetImage('book.png'),
                    backgroundColor: Colors.white,
                    radius: 50.0,
                    ),
                    SizedBox(
                        height: 12,
                      ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[                      
                      Text(
                        'Story of mine',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                          letterSpacing: 2.0,              
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        story,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                                        
                        ),
                      ),
                    ],
                  ),
                ],                  
              ),
            );
    