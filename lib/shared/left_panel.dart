import 'package:flutter/material.dart';
import 'package:my_flutter_website/texts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

const Container = Container(
        width: 290.0,
        color: Colors.grey[200],
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
            backgroundImage: AssetImage('me.jpg'),
            radius: 65.0,
          ),
           Divider(              
              height: 32.0,
            ),
          Text(
            "About me",
            style: TextStyle(
              color: Colors.blue[500],
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              letterSpacing: 2.0,              
              ),
            ),
          Divider(              
              height: 32.0,
            ),
          Text(
            aboutMe,                                     
            ),
          Divider(              
            height: 30.0,
            ),
          Text(
            "Contact",
            style: TextStyle(
              color: Colors.blue[500],
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              letterSpacing: 2.0,              
              ),
            ),
          Divider(              
            height: 30.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.amber[500],
                ),
                SizedBox(width: 15.0),               
                Text(
                  'maciekwin3@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.phone_android,                  
                ),
                SizedBox(width: 15.0),
                Text(
                  '+48 697220404',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(AntDesign.github),
                SizedBox(width: 15.0),
                InkWell(
                  child: Text(
                    'https://github.com/MaciekWin3',
                    style: TextStyle(
                    color: Colors.blue[700],
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                    ),
                  ),
                  onTap: () async {
                    if (await canLaunch("https://github.com/MaciekWin3")) {
                      await launch("https://github.com/MaciekWin3");
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),