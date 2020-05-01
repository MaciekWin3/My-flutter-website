import 'package:http/http.dart';
import 'dart:convert';

class Crypto {

  
  String priceBtc;
  String priceEth;

  Future<void> getData() async {

    Response responseBtc = await get ('https://bitbay.net/API/Public/BTC/ticker.json');
    Response responseEth = await get ('https://bitbay.net/API/Public/ETH/ticker.json');
    Map dataBtc = jsonDecode(responseBtc.body);
    Map dataEth = jsonDecode(responseEth.body);
    

    //getting data form json

    priceBtc = dataBtc['average'];
    priceEth = dataEth['average'];


  }
}