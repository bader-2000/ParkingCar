import 'package:shared_preferences/shared_preferences.dart';

class SPHelper {
  SPHelper._();
  static SPHelper spHelper = SPHelper._();

  SharedPreferences? sharedPreferences;
  String iFfirstShowTitel = 'ifFisrtshow';
  Future initSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  bool isNew() {
    bool result = sharedPreferences?.getBool(iFfirstShowTitel) ?? true;
    return result;
  }

  Future storeUserStatus() async {
    await sharedPreferences?.setBool(iFfirstShowTitel, true);
  }
}
