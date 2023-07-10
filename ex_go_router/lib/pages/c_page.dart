import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CPage extends StatefulWidget {
  const CPage({Key? key}) : super(key: key);

  @override
  State<CPage> createState() => _CPageState();
}

class _CPageState extends State<CPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: const Text('Pagina C')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.go('/home_abc'),
            child: const Text('Voltar para a Home abc'),
          ),
        ],
      ),
    );
  }
}
