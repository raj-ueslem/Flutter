import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPopScope,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: const Center(
          child: Text('Bem vindo sulista'),
        ),
      ),
    );
  }

  Future<bool> _onWillPopScope() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Opa'),
            content: const Text("Voce deseja sair do app?"),
            actions: [
              ElevatedButton.icon(
                onPressed: () => Navigator.of(context).pop(false),
                label: const Text('Oh no!'),
                icon: const Icon(Icons.dnd_forwardslash, color: Colors.black),
              ),
              ElevatedButton.icon(
                onPressed: () => Navigator.of(context).pop(true),
                label: const Text('Sim'),
                icon: const Icon(Icons.dnd_forwardslash, color: Colors.black),
              ),
            ],
          ),
        )) ??
        false;
  }
}
