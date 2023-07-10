import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BPage extends StatefulWidget {
  const BPage({Key? key}) : super(key: key);

  @override
  State<BPage> createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(title: const Text('Pagina B')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.go('/home_abc'),
            child: const Text('Voltar para a Home abc'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/home_abc/a/b/c'),
            child: const Text('Abrir Pagina C'),
          ),
        ],
      ),
    );
  }
}
