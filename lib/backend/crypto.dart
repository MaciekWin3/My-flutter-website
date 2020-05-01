import 'package:http/http.dart';
import 'dart:convert';

class Crypto {

  
  String price;
  String name;
  
  Crypto({this.name});

  Future<void> getData() async {

    Response response = await get ('https://bitbay.net/API/Public/$name/ticker.json');
    
    Map data = jsonDecode(response.body);
    
    

    //getting data form json

    price = data['average'];
    


  }
}