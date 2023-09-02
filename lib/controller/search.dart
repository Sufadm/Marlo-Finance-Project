import 'package:flutter/material.dart';
import 'package:marlo_project/model/transaction_model.dart';

class SearchProvider extends ChangeNotifier {
  String _searchText = "";
  static List<Data> allTransaction = [];
  String get searchText => _searchText;

  void updateSearchText(String text) {
    _searchText = text;
    notifyListeners();
  }

  void updateTheList(List<Data> transactions) {
    allTransaction = transactions;
    notifyListeners();
  }
}
