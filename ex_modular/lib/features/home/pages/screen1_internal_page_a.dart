import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ScreenOneInternalPageA extends StatelessWidget {
  const ScreenOneInternalPageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Internal Page A'),
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
