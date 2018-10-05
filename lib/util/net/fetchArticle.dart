import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

Future fetchPost(T, String url) async {
  final response =
      await http.get(url);

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    return T.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}