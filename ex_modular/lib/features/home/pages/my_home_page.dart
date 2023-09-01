import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../model/person_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: _launchScreen1,
            child: const Text('goto Screen 1'),
          ),
          ElevatedButton(
            onPressed: _launchScreen2,
            child: const Text('goto Screen 2'),
          ),
        ],
      ),
    );
  }

  _launchScreen1() => Modular.to.pushNamed('/screen1');
  _launchScreen2() =>
      Modular.to.pushNamed('/screen2', arguments: Person(name: 'Rodrigo'));
}
