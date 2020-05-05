import 'package:flutter/material.dart';
import 'package:my_flutter_website/texts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_flutter_website/backend/btc.dart';


class LeftPanelMobile extends StatefulWidget {
  @override
  _LeftPanelStateMobile createState() => _LeftPanelStateMobile();
}


class _LeftPanelStateMobile extends State<LeftPanelMobile> {
  Future<Album> futureAlbum;
  

  @override
   void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
    
  }



  Widget build(BuildContext context) {  
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[       
        Expanded(
              child: Container(       
              color: Colors.grey[200],
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                  backgroundImage: AssetImage('me.jpg'),
                  radius: 75.0,
                ),
                 Divider(              
                    height: 30.0,
                  ),
                SelectableText(
                  "About me",
                  style: TextStyle(
                    color: Colors.blue[500],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,              
                    ),
                  ),
                Divider(              
                    height: 30.0,
                    thickness: 1.5,
                  ),
                SelectableText(
                  aboutMe,
                  textAlign: TextAlign.center,
                  style: TextStyle(                   
                    ),
                  ),
                Divider(              
                  height: 30.0,
                  thickness: 1.5,
                  ),
                SelectableText(
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
                  thickness: 1.5,
                ),
                  Row(                   
                    children: <Widget>[                     
                      Icon(
                        Icons.phone_android,                  
                      ),
                      SizedBox(width: 15.0),
                      SelectableText(
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
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.amber[500],
                      ),
                      SizedBox(width: 15.0),               
                      SelectableText(
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
        ),
      ],
      ),
    );
  }
}


