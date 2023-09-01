import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ScreenOneInternalPageB extends StatelessWidget {
  const ScreenOneInternalPageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internal Page B'),
      ),
      body: Column(
        children: [
          const Text('Internal Page B'),
          ElevatedButton(
            onPressed: _launchHomeScreen,
            child: const Text('goto Home Screen'),
          ),
        ],
      ),
    );
  }

  _launchHomeScreen() => Modular.to.pushNamed('/');
}
