import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  Widget textButtonChildHello() => const Text("Show Toast");

  Widget columnTextButtonHello() => TextButton(
      onPressed: () => _sendToast(message: "Oie, tudo bem?",fontSize: 40.0),
      child: textButtonChildHello());

  Widget textButtonChildDeception() => const Text("Outra mensagem.");

  Widget columnTextButtonDeception() => TextButton(
    onPressed: () => _sendToast(message: "Decepção"),
    child: textButtonChildDeception());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          columnTextButtonHello(),
          columnTextButtonDeception(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _sendToast({required String message, double? fontSize = 14.0}) {
    print("Clicou");
    Fluttertoast.showToast(
        msg: message, toastLength: Toast.LENGTH_SHORT, fontSize: fontSize);
  }
}
