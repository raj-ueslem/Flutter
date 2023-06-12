import 'package:flutter/material.dart';

class Screen2Page extends StatefulWidget {
  const Screen2Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen2Page> createState() => _Screen2PageState();
}

class _Screen2PageState extends State<Screen2Page> {
  @override
  Widget build(BuildContext context) {
    Text showText(message) => Text(message);

    ElevatedButton backPageElevatedButton() => ElevatedButton(
          onPressed: () {
            _backToLastPage(context);
          },
          child: showText('Voltar Pagina'),
        );
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: showText(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showText('Bem vindo, ${widget.title}'),
            backPageElevatedButton(),
          ],
        ),
      ),
    );
  }

  _backToLastPage(context) => Navigator.of(context).pop();
}
