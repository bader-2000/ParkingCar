import 'package:flutter/material.dart';

class controllerprovider_1 extends ChangeNotifier {
  String name = 'Bader';

  changeName() {
    name = 'Ahmed ';
    notifyListeners();
  }

  backName() {
    name = 'Bader';
    notifyListeners();
  }
}

class controllerprovider_2 extends ChangeNotifier {
  int name_2 = 0;

  incress() {
    name_2++;
    notifyListeners();
  }

  discress() {
    name_2--;
    notifyListeners();
  }
}
