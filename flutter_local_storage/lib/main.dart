import 'package:flutter/material.dart';
import 'package:flutter_demo/StoreClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

  final title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var TestKey = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            Text(
              'Data in the SharedPreferences  :',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              TestKey,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 32,
            ),
            ElevatedButton(
              child: const Text('Save Data'),
              onPressed: () {
                SaveData('TestString');
              },
            ),
            ElevatedButton(
              child: const Text('Load Data'),
              onPressed: () async {
                TestKey = await LoadData('TestString');

                setState(() {});

                print(TestKey);
              },
            ),
            ElevatedButton(
              child: const Text('Clear Data'),
              onPressed: () {
                RemoveData('TestString');
              },
            )
          ]),
        ),
      ),
    );
  }
}
