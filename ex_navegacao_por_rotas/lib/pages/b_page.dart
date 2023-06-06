import 'dart:async';
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
      body: Center(child: Padding(padding: const EdgeInsets.all(10), child: Center(
        child: ElevatedButton(
            onPressed: () {
              Timer(
                const Duration(milliseconds: 400),
                    () => Navigator.pop(context)
              );
            },
            child: const Text("Abrir Pagina Home")),
      ),),),
    );
  }
}
