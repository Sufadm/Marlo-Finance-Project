import 'package:flutter/foundation.dart';

class CheckBoxProvider extends ChangeNotifier {
  bool _value = false;
  bool _valueUSD = false;
  bool _valueCAD = false;
  bool _valuesGBP = false;

  bool get value => _value;
  bool get valueUSD => _valueUSD;
  bool get valueCAD => _valueCAD;
  bool get valuesGBP => _valuesGBP;

  void setValue(bool newValue) {
    _value = newValue;
    notifyListeners();
  }

  void setValuesUSD(bool value) {
    _valueUSD = value;
    notifyListeners();
  }

  void setValueCAD(bool value) {
    _valueCAD = value;
    notifyListeners();
  }

  void setValueGBP(bool value) {
    _valuesGBP = value;
    notifyListeners();
  }
}
