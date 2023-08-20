import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../store/dice_counter_store.dart';

class DiceTwoPage extends StatefulWidget {
  const DiceTwoPage({super.key});

  @override
  State<DiceTwoPage> createState() => _DiceTwoPageState();
}

class _DiceTwoPageState extends State<DiceTwoPage> {
  final _diceCounterStore = DiceCounterStore();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Observer(
          builder: (context) => Text('Dice 2: ${_diceCounterStore.getDice2}'),
        ),
        Observer(
          builder: (context) => _diceCounterStore.getProgressDice2 == true
              ? const CircularProgressIndicator()
              : const SizedBox(),
        ),
        ElevatedButton(
          onPressed: () => _rollDice2(),
          child: const Text('Roll Dice 2'),
        ),
        Observer(
          builder: (context) => Text('Soma: ${_diceCounterStore.getSumDicies}'),
        ),
      ],
    );
  }

  _rollDice2() => _diceCounterStore.rollDice2();
}
