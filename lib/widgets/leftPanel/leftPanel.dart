import 'package:flutter/material.dart';
import 'package:my_flutter_website/backend/eth.dart';
import 'package:my_flutter_website/backend/quote.dart';
import 'package:my_flutter_website/texts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_flutter_website/backend/btc.dart';
import 'package:my_flutter_website/backend/eth.dart';

class LeftPanel extends StatefulWidget {
  @override
  _LeftPanelState createState() => _LeftPanelState();
}

class _LeftPanelState extends State<LeftPanel> {
  Future<Album> futureAlbum;
  Future<AlbumEth> futureAlbum2;

  @override
   void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
    futureAlbum2 = fetchAlbum2();
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
                  height: 30.0,
                ),
              Text(
                aboutMe,
                textAlign: TextAlign.center,
                style: TextStyle(
                  
                  ),
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
                  color: Colors.grey[350],
                ),
                Text(
                "Cryptocurrency \n exchange rate",
                style: TextStyle(
                  color: Colors.blue[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 27.0,
                  letterSpacing: 2.0,              
                  ),
                ),
                Divider(              
                  height: 32.0,             
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
                          return Text(snapshot.data.high.substring(0,7));
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }
                        // By default, show a loading spinner.
                        return CircularProgressIndicator();
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      backgroundImage: AssetImage('eth.png'),
                      radius: 22.0,
                    ),
                    FutureBuilder<AlbumEth>(
                      future: futureAlbum2,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(snapshot.data.high);
                        } else if (snapshot.hasError) {
                          return Text("Error!");
                        }
                        // By default, show a loading spinner.
                        return CircularProgressIndicator();
                      },
                    ),
                  ],
                ),
                
              ],
            ),
    );
  }
}


