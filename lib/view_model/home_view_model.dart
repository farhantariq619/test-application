import 'dart:math';

import 'package:flutter/material.dart';


class HomeViewModel extends ChangeNotifier {
  Color backgroundColor = Colors.white;

  changeBackgroundColor() {
    backgroundColor = _getRandomColor();
    notifyListeners();
  }

  Color _getRandomColor() {
    return Color.fromRGBO(
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
      1.0,
    );
  }


}
