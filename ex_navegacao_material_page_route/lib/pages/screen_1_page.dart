import 'package:flutter/material.dart';

class Screen1Page extends StatelessWidget {
  const Screen1Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    Text showText(String message) => Text(message);

    ElevatedButton showBackElevatedButton() => ElevatedButton(
          onPressed: () {
            _backToLastPage(context);
          },
          child: showText('Voltar para tela Home'),
        );

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: showText(title)),
      body: Center(
        child: Column(
          children: [
            showText('Bem vindo $title, tela 1'),
            showBackElevatedButton(),
          ],
        ),
      ),
    );
  }

  _backToLastPage(context) => Navigator.of(context).pop();
}
