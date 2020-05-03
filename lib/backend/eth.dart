import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<AlbumEth> fetchAlbum2() async {
  final response =
      await http.get('https://www.bitstamp.net/api/ticker/ethbtc');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return AlbumEth.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class AlbumEth {
  
  final String high;

  AlbumEth({this.high});

  factory AlbumEth.fromJson(Map<String, dynamic> json) {
    return AlbumEth(
      high: json['high'],
      
    );
  }
}


