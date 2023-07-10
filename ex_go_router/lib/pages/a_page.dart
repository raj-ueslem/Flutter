import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class APage extends StatefulWidget {
  const APage({Key? key}) : super(key: key);

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: const Text('Pagina A')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.go('/home_abc'),
            child: const Text('Voltar para pagina Home abc'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/home_abc/a/b'),
            child: const Text('Abrir Pagina B'),
          ),
        ],
      ),
    );
  }
}
