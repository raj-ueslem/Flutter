import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ScreenOneInternalPageC extends StatelessWidget {
  const ScreenOneInternalPageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internal Page C'),
      ),
      body: Column(
        children: [
          const Text('Internal Page C'),
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
