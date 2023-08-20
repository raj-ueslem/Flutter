import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../store/dice_counter_store.dart';

class DiciesSumPage extends StatefulWidget {
  const DiciesSumPage({super.key});

  @override
  State<DiciesSumPage> createState() => _DiciesSumPageState();
}

class _DiciesSumPageState extends State<DiciesSumPage> {
  final _diceCounterStore = DiceCounterStore();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Text('Soma: ${_diceCounterStore.getSumDicies}'),
    );
  }
}
