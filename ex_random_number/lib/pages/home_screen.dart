import 'package:flutter/material.dart';
import 'number.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Número Randomico'),
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

  int? randomicNumber;

  Widget _showTextLotteryNumber() => const Text('Numero da loteria',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 50.0),);

  Widget _showTextRandomicNumber() => Text(
    randomicNumber != null ? '$randomicNumber' : 'Click no botão',
    style: const TextStyle(
        fontSize: 50.0,
        backgroundColor: Colors.deepOrange,
        color: Colors.white),);

  Widget _fab() =>
      FloatingActionButton(
        onPressed: _sendNewNumber,
        tooltip: 'Random number',
        key: const Key('const_float_button'),
        child: const Icon(Icons.add),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            _showTextLotteryNumber(),
            _showTextRandomicNumber(),
          ],
        ),
      floatingActionButton: _fab(),
    );
  }
  @override
  void initState() {
    print('initState');
    // randomicNumber = _generateRandomicNumber();
  }
  @override
  void dispose() {
    print('dispose');
  }
  int _generateRandomicNumber() {
    return Number.generateRandomNumber();
  }
  _sendNewNumber() {
    setState(() {
      randomicNumber = _generateRandomicNumber();
      _sendSnackBar();
    });
  }
  _sendSnackBar() {
    final snackBar = SnackBar(content: Text('Novo numero: $randomicNumber'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}