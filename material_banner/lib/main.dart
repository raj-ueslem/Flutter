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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => _sendMaterialBanner(),
              child: const Text("Material Banner"),
            ),
          ),
        ],
      ),
    );
  }
  _sendMaterialBanner(){
    ScaffoldMessenger.of(context).showMaterialBanner(
        MaterialBanner(
          content: const Text('Material Banner aqui hein'),
          contentTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
          backgroundColor: Colors.green,
          leadingPadding: const EdgeInsets.only(right: 30),
          leading: const Icon(Icons.info, size: 32, color: Colors.white,),
          actions: [
            TextButton(
                onPressed: _sendHello,
                child: const Text('OK', style: TextStyle(color: Colors.white, fontSize: 22),),
            ),
            TextButton(
              onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
              child: const Text('Cancelar', style: TextStyle(color: Colors.white, fontSize: 22),),
            ),
          ])
    );
  }
  _sendHello() => print('oi');
}
