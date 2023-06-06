import 'package:exe_componentizacao_card/model/_export_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Column _columnLine() => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      MyCustomWidgetModel(onTap: () {debugPrint('Teste de print');},),
      MyCustomCounter(onDecrement: (int counter) => MyIntCallback, onIncrement: (int counter) => MyIntCallback,),
    ],
  );
  Center _columnCenter() => Center(
    child: _columnLine(),
  );
  SafeArea _columnSafeArea() => SafeArea(
    child: _columnCenter(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  _columnSafeArea(),
    );
  }
}