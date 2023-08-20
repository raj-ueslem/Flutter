import 'dart:math';
import 'package:mobx/mobx.dart';

part 'dice_counter_store.g.dart';

class DiceCounterStore = _DiceCounterStore with _$DiceCounterStore;

abstract class _DiceCounterStore with Store {
  @observable
  int dice1 = 0;

  @observable
  bool progressDice1 = false;

  @observable
  int dice2 = 0;

  @observable
  bool progressDice2 = false;

  @action
  void rollDice1() {
    try {
      progressDice1 = true;
      Future.delayed(
        const Duration(seconds: 2),
        () {
          dice1 = Random().nextInt(6) + 1;
          progressDice1 = false;
        },
      );
    } catch (e) {
      print('Erro: $e');
    } finally {
      print('Passou no Finally dice 1');
    }
  }

  @action
  void rollDice2() {
    try {
      progressDice2 = true;
      Future.delayed(
        const Duration(seconds: 2),
        () {
          dice2 = Random().nextInt(6) + 1;
          progressDice2 = false;
        },
      );
    } catch (e) {
      print('Erro: $e');
    } finally {
      print('Passou no Finally dice 2');
    }
  }

  @computed
  int get getDice1 => dice1;

  @computed
  bool get getProgressDice1 => progressDice1;

  @computed
  int get getDice2 => dice2;

  @computed
  bool get getProgressDice2 => progressDice2;

  @computed
  int get getSumDicies => dice1 + dice2;
}
