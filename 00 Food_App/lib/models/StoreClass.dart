

import 'package:shared_preferences/shared_preferences.dart';

void SaveData(String Name,String Value) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  _prefs.setString(Name, Value);
}

Future<String> LoadData(String Name) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();

  String TestKey = _prefs.getString(Name) ?? '0';

  return TestKey;
}

void RemoveData(String Name) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  _prefs.remove(Name);
}
