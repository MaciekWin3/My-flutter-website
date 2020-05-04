import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response =
      await http.get('https://www.bitstamp.net/api/ticker');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  
  final String high;

  Album({this.high});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      high: json['high'],
      
    );
  }
}


