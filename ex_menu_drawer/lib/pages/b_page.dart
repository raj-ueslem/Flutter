import 'package:flutter/material.dart';

class BPage extends StatefulWidget {
  const BPage({Key? key}) : super(key: key);

  @override
  State<BPage> createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina B'),
      ),
      body: const Column(
        children: [
          Text('Pagina B feita por Raj'),
        ],
      ),
    );
  }
}
