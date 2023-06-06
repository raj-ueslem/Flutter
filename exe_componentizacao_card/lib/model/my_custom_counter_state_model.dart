import 'package:exe_componentizacao_card/components/_export_components.dart';
import 'package:flutter/material.dart';

typedef MyIntCallback = Function(int);

class MyCustomCounter extends StatefulWidget {
  final MyIntCallback onIncrement;
  final MyIntCallback onDecrement;
  const MyCustomCounter({Key? key, required this.onIncrement, required this.onDecrement}) : super(key: key);

  @override
  State<MyCustomCounter> createState() => _MyCustomCounterState();
}

class _MyCustomCounterState extends State<MyCustomCounter> {
  int _counter = 0;

  TextComponent _rowText() => TextComponent(data: _counter.toString());

  IconButtonComponent _rowIconButtonIncrease() => IconButtonComponent(
    newIcon: const Icon(Icons. add_circle ),
    newOnPressed: () {
      _increaseCounter();
      widget.onIncrement(_counter);
    },
  );

  IconButtonComponent _rowIconButtonDecrease() => IconButtonComponent(
    newIcon: const Icon(Icons. remove_circle ),
    newOnPressed: () {
      setState(() {
        _decreaseCounter();
      });
      widget.onDecrement(_counter);
    } ,
  );

  @override
  Widget build(BuildContext context) {
    MyCustomCounter(
      onIncrement: (counter) {
        debugPrint('Contador é incrementado\nValor incrementado: $counter');
      },
      onDecrement: (counter) {
        debugPrint('Contador é decrementado\nValor decrementado: $counter');
      },
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _rowIconButtonDecrease(),
        _rowText(),
        _rowIconButtonIncrease(),
      ],
    );
  }

  _increaseCounter() => setState(() {
    _counter++;
  });
  _decreaseCounter() => setState(() {
    _counter--;
  });

}