import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: const Text('Pagina seguinte')),
      body: Column(
        children: [
          Text('Olá ${widget.name}, td bem?'),
          ElevatedButton(
            onPressed: () => context.go('/'),
            child: const Text('Voltar para a Home'),
          ),
        ],
      ),
    );
  }
}
