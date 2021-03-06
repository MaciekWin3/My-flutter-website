import 'package:flutter/material.dart';
import 'package:my_flutter_website/texts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_flutter_website/backend/btc.dart';



class LeftPanel extends StatefulWidget {
  @override
  _LeftPanelState createState() => _LeftPanelState();
}

class _LeftPanelState extends State<LeftPanel> {
  Future<Album> futureAlbum;
  

  @override
   void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
    
  }



  Widget build(BuildContext context) {
    
    return Container(     
      width: 290.0, //szerokość bocznego paska
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
                  thickness: 1.5,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.phone_android,                  
                      ),
                      SizedBox(width: 15.0),
                      Tooltip(
                        message: 'My phone number',
                          child: SelectableText(
                          '+48 697220404',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14.0,
                            letterSpacing: 1.0,
                          ),
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
                      Icon(
                        Icons.email,
                        color: Colors.amber[500],
                      ),
                      SizedBox(width: 15.0),               
                      Tooltip(
                        message: 'My e-mail',
                          child: SelectableText(
                          'maciekwin3@gmail.com',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14.0,
                            letterSpacing: 1.0,
                          ),
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
                  Divider(              
                    height: 30.0,
                    thickness: 1.5,
                  ),
                  SelectableText(
                  "      Bitcoin \n exchange rate",
                  style: TextStyle(
                    color: Colors.blue[500],
                    fontWeight: FontWeight.bold,
                    fontSize: 27.0,
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
                        Ionicons.logo_bitcoin,
                        size: 48.0,
                        ),
                      FutureBuilder<Album>(
                        future: futureAlbum,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            if(snapshot.data.high[0] == '1' ){
                              return Text(snapshot.data.high.substring(0,8));
                            }
                            else{
                              return Text(snapshot.data.high.substring(0,7));
                            }                         
                          } else if (snapshot.hasError) {
                            return Text("${snapshot.error}");
                          }
                          // By default, show a loading spinner.
                          return CircularProgressIndicator();
                        },
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: AssetImage('eth.png'),
                        radius: 22.0,
                      ),
                      Text('Soon'),
                    ],
                  ),
                  
                ],
              ),
      );
    }
  }


