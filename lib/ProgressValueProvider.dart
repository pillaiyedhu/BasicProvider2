import 'package:flutter/material.dart';

class ProgressValue extends ChangeNotifier {
  double _progress = 0.1;

  set setprogress(double value) {
    _progress = value;
    notifyListeners();
  }

  double get getprogress => _progress;
}
