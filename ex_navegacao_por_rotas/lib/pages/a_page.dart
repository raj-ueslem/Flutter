import 'dart:async';
import 'package:flutter/material.dart';

class Apage extends StatefulWidget {
  const Apage({Key? key}) : super(key: key);

  @override
  State<Apage> createState() => _ApageState();
}

class _ApageState extends State<Apage> {

  @override
  Widget build(BuildContext context) {

    final String name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina A'),
      ),
      body: Column(
        children: [
          Text("Olá $name, seja bem vindo", style: const TextStyle(fontSize: 30),),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Timer(
                    const Duration(milliseconds: 400),
                        () => Navigator.pop(context),
                  );
                },
                child: const Text("Abrir Pagina!")),
          ),)
        ],
      ),
    );
  }
}
