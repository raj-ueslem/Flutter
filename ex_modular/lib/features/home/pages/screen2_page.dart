import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/_export_core.dart';
import '../_export_home.dart';

class ScreenTwoPage extends StatelessWidget {
  final Person person;
  const ScreenTwoPage({
    super.key,
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Column(
        children: [
          Text(
              'olá, ${CoreUtil.convertStringToLowerCase(value: person.name.toString())}'),
          Text("${HomeUtil.getThreeCaracters(value: person.name.toString())}"),
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
