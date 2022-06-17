import 'package:shared_preferences/shared_preferences.dart';

void SaveData(String Name) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  _prefs.setString(Name, "ทดสอบ การทำงาน ");
}

Future<String> LoadData(String Name) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();

  String TestKey = _prefs.getString(Name) ?? 'Key Is Null';

  return TestKey;
}

void RemoveData(String Name) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  _prefs.remove(Name);
}
