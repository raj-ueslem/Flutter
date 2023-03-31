import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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
          ElevatedButton(
            onPressed: () {
              print('clicou');

              Widget okButton = ElevatedButton(
                onPressed: () {
                  print('clicou no ok');
                  Navigator.of(context).pop();
                },
                child: const Text('ok'),
              );
              Widget cancelButton = ElevatedButton(
                onPressed: () {
                  print('clicou no cancelar');
                  Navigator.of(context).pop();
                },
                child: const Text('ok'),
              );
              //configuração do meu alert
              AlertDialog alert = AlertDialog(
                title: const Text('Atenção'),
                content: const Text('Você está vendo essa mensagem em Alert'),
                actions: [okButton, cancelButton],
              );
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  });
            },
            child: const Text('Botão aletório'),
          ),
        ],
      ),
    );
  }
}
