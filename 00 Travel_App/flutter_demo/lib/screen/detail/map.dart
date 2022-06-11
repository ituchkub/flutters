import 'package:url_launcher/url_launcher.dart';

class MapUtilss {
  MapUtilss._();

  static Future<void> openMap(double Lat, double Long) async {
    String googleUrl =
        "https://www.google.com/maps/search/?api=1&query=$Lat,$Long";
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}
