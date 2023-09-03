import 'package:flutter/material.dart';

class FilterValuesProvider with ChangeNotifier {
  bool showAccountContainer = false;
  bool showMoneyInContainer = false;
  bool showCompletedContainer = false;
  Icon? filterIcon;
  String currencies = "";
  String minimumamount = "";
  String maximumamount = "";
  String startdate = "";
  String enddate = "";
  void updateData(String currencies, String minimumamount, String maximumamount,
      Icon icon) {
    startdate;
    enddate;

    this.currencies = currencies;
    this.minimumamount = minimumamount;
    this.maximumamount = maximumamount;
    showAccountContainer = true;
    showMoneyInContainer = true;
    showCompletedContainer = true;
    filterIcon = icon;
    notifyListeners();
  }
}
