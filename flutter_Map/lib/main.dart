import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Location location = Location();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            padding: EdgeInsets.only(top: 150),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      if (await location.serviceEnabled() != true) {
                        location.requestService().then((value) {
                          print(value);
                        });
                      }
                    },
                    child: Text('Request Service')),
                ElevatedButton(
                    onPressed: () async {
                      if (await location.hasPermission() !=
                          PermissionStatus.granted) {
                        location.requestPermission().then((value) {
                          print(value);
                        });
                      }
                    },
                    child: Text('Request Permission')),
                ElevatedButton(
                    onPressed: () {
                      location.getLocation().then((value) {
                        // print(value.latitude);
                        // print(value.longitude);
                      });
                    },
                    child: Text('Crurent Location')),  ElevatedButton(
                    onPressed: () async {
                      await location.onLocationChanged.listen((event) {
                        
                          print(event.latitude);
                           print(event.longitude);

                      });
                    },
                    child: Text('Location Changed')),
                ElevatedButton(
                    onPressed: () async {
                      var valueA = await location.getLocation();

                   
                      if (await MapLauncher.isMapAvailable(MapType.google) ==
                          true) {
                        MapLauncher.showMarker(
                            mapType: MapType.google,
                            coords: Coords(valueA.latitude!, valueA.longitude!),
                            title: 'title');
                      }
                    },
                    child: Text('Open Map')),
              ],
            )),
      ),
    );
  }
}
