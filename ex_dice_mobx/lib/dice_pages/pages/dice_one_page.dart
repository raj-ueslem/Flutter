import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../store/dice_counter_store.dart';

class DiceOnePage extends StatefulWidget {
  const DiceOnePage({super.key});

  @override
  State<DiceOnePage> createState() => _DiceOnePageState();
}

class _DiceOnePageState extends State<DiceOnePage> {
  final _diceCounterStore = DiceCounterStore();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Observer(
          builder: (context) => Text('Dice 1: ${_diceCounterStore.getDice1}'),
        ),
        Observer(
          builder: (context) => _diceCounterStore.getProgressDice1 == true
              ? const CircularProgressIndicator()
              : const SizedBox(),
        ),
        ElevatedButton(
          onPressed: () => _rollDice1(),
          child: const Text('Roll Dice 1'),
        ),
      ],
    );
  }

  _rollDice1() => _diceCounterStore.rollDice1();
}
