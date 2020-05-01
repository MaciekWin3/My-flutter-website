import 'package:flutter/material.dart';
import 'package:my_flutter_website/backend/quote.dart';
import 'package:my_flutter_website/texts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_flutter_website/backend/crypto.dart';
import 'package:my_flutter_website/widgets/leftPanel.dart';
import 'package:my_flutter_website/widgets/upBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

    String price = '';

  void setupCryptoPrices() async {
    Crypto instance = Crypto(name: 'BTC');
    await instance.getData();
    print(instance.price);
    setState(() {
      price = instance.price;
    });
  }


  @override
  void initState(){
    super.initState();
    setupCryptoPrices();
  }
  


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: upBar,   // <= góny panel
      body: Row(          
          children: <Widget>[
          leftPanel, // <= cały leftPanel 
          Container( //przerwa
            width: 50.0, 
            color: Colors.yellow[50],            
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 500,
                height: 300,
                padding: EdgeInsets.all(5),
                color: Colors.lightBlue,
                child: Row(                  
                  children: [                    
                    CircleAvatar(
                    backgroundImage: AssetImage('flutter2.png'),
                    radius: 65.0,
                    ),
                  ],                  
                ),
              ),
              Container(
                width: 500,
                height: 300,
                padding: EdgeInsets.all(5),
                color: Colors.lightBlue,
                child: Row(                  
                  children: [                    
                    CircleAvatar(
                    backgroundImage: AssetImage('c.png'),
                    backgroundColor: Colors.white,
                    radius: 65.0,
                    ),
                  ],                  
                ),
              ),
            ],
          ),
          Container( 
            width: 50.0, 
            color: Colors.yellow[50],            
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 500,
                height: 300,
                padding: EdgeInsets.all(50),
                color: Colors.lightBlue,
              ),
              Container(
                width: 500,
                height: 300,
                padding: EdgeInsets.all(50),
                color: Colors.lightBlue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}