import 'package:ex_navegacao_material_page_route/pages/_export_pages.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Text _showTextMessage(String message) => Text(message);

  ElevatedButton _showElevatedButton() => ElevatedButton(
        onPressed: () {
          _navegatorScreeTwo('Raj');
        },
        child: _showTextMessage('Abrir tela 2'),
      );
  ElevatedButton _showElevatedButton2() => ElevatedButton(
        onPressed: () {
          _navegatorScreeOne('Jezuita');
        },
        child: const Text('abrir tela 1'),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Home ${widget.title}'),
            _showElevatedButton2(),
            _showElevatedButton(),
          ],
        ),
      ),
    );
  }

  _navegatorScreeTwo(message) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => Screen2Page(title: message),
        ),
      );
  _navegatorScreeOne(message) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => Screen1Page(title: message),
        ),
      );
}
