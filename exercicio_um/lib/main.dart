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
          title: const Text('Exercicio Um'),
        ),
        body: Column(
          children: [
            Expanded(child:
              Container(
                height: 100.0,
                color: Colors.black38,
                child: Row(
                  children: const [
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating)
                  ],
                ),
              ),
            ),
            Expanded(child:
              Container(
                height: 100.0,
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating)
                  ],
                ),
              ),
            ),
            Expanded(child:
              Container(
                height: 100.0,
                color: Colors.cyan,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating)
                  ],
                ),
              ),
            ),
            Expanded(child:
              Container(
                height: 100.0,
                color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating)
                  ],
                ),
              ),
            ),
            Expanded(child:
              Container(
                height: 100.0,
                color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating)
                  ],
                ),
              ),
            ),
            Expanded(child:
              Container(
                height: 100.0,
                color: Colors.indigo,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating),
                    Icon(Icons.ice_skating)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
