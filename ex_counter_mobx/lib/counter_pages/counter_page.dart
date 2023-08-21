import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../translations/locale_keys.g.dart';
import 'store/counter_store.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final counter = CounterStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(LocaleKeys.my_home_page_pushed_button.tr(),
                style: Theme.of(context).textTheme.titleMedium),
            Observer(
              builder: (BuildContext context) => Text('${counter.value}',
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
