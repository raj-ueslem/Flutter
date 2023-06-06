import 'dart:async';

import 'package:ex_navegacao_por_rotas/app/_export_app.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(10), child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Timer(
                    const Duration(milliseconds: 400),
                        () => Navigator.pushNamed(
                            context,
                            AppRoutes.appRouteA,
                            arguments: "Raj"),
                  );
                },
                child: const Text("Abrir Pagina A")),
          ),),
          Padding(padding: const EdgeInsets.all(10), child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Timer(
                    const Duration(milliseconds: 400),
                        () => Navigator.pushNamed(
                        context,
                        AppRoutes.appRouteB,
                        arguments: "Ueslem"),
                  );
                },
                child: const Text("Abrir Pagina B")),
          ),),
          Padding(padding: const EdgeInsets.all(10), child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Timer(
                    const Duration(milliseconds: 400),
                        () => Navigator.pushNamed(
                        context,
                        AppRoutes.appRouteAbout,
                        arguments: "Raj"),
                  );
                },
                child: const Text("Abrir Pagina Sobre")),
          ),)
        ],
      ),
    );
  }
}
