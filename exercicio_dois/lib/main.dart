import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
        ),
        body: Row(
          children: [
            Column(
              children: [
                Container(
                    height: 50.0,
                    width: 70.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
                Container(
                    height: 50.0,
                    width: 80.0,
                    color: Colors.orange,
                    child: const Icon(Icons.import_contacts_sharp)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

