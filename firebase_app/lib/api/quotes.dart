import 'dart:convert';

import 'package:firebase_app/models/quotes_model.dart';
import 'package:http/http.dart' as http;

class QuotesCall {
  final String url =
      'https://programming-quotes-api.herokuapp.com/quotes/lang/en';

  Future<List<Quote>> getQuotes() async {
    final req = await http.get(url);
    if (req.statusCode == 200) {
      final Iterable theJson = jsonDecode(req.body);
      return theJson.map((kwe) => Quote.fromJson(kwe)).toList();
    }
    return null;
  }
}
