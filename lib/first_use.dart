library first_use;

import 'package:shared_preferences/shared_preferences.dart';

class FirstUse {

  Future<bool> isFirstUse() {
    return SharedPreferences.getInstance()
    .then((sp) => sp.getString(firstUseSetting) == null);
  }

  Future<DateTime> firstUseDate() {
    return SharedPreferences.getInstance()
    .then((sp) {
      var firstUse = sp.getString(firstUseSetting);
      return firstUse != null ? DateTime.parse(firstUse) : null;
    });
  }
  
  Future logNewFirstUse() {
    return SharedPreferences.getInstance()
    .then((firstUse) => firstUse.setString(firstUseSetting, DateTime.now().toString()));
  }

  static final String firstUseSetting = "first_use";
}
