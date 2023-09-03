import 'package:flutter/material.dart';

class FilterValuesProvider with ChangeNotifier {
  bool showAccountContainer = false;
  bool showMoneyInContainer = false;
  bool showCompletedContainer = false;

  String currencies = "";
  String minimumamount = "";
  String maximumamount = "";
  String startdate = "";
  String enddate = "";
  void updateData(
      String currencies, String minimumamount, String maximumamount) {
    startdate;
    enddate;
    this.currencies = currencies;
    this.minimumamount = minimumamount;
    this.maximumamount = maximumamount;
    showAccountContainer = true;
    showMoneyInContainer = true;
    showCompletedContainer = true;
    notifyListeners();
  }
}
