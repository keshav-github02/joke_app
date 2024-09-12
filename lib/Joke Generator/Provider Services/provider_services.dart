import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:joke_app/Joke%20Generator/Model/model.dart';


class JokeProviderServices extends ChangeNotifier {
  Joke? _joke;

  Joke? get joke => _joke;

  Future<void> getData() async {
    var url = 'https://v2.jokeapi.dev/joke/Any';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        _joke = Joke.fromJson(data);

        notifyListeners();
      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
