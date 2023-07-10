import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.goNamed('settings',
                  pathParameters: {'name': 'Zé da esfirra'}),
              child: const Text('Abrir Settings'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/home_abc'),
              child: const Text('Abrir Page ABC'),
            ),
          ],
        ),
      ),
    );
  }
}
