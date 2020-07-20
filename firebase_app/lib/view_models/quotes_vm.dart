import 'package:firebase_app/api/quotes.dart';
import 'package:firebase_app/models/quotes_model.dart';
import 'package:flutter/material.dart';

class QuotesViewModel extends ChangeNotifier{


  List<Quote> quo = List<Quote>();

  void getThem()async{
    final them = await QuotesCall().getQuotes();
    this.quo = them;
    notifyListeners();
  }
}