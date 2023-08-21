import 'package:easy_localization/easy_localization.dart';
import 'package:ex_counter_mobx/counter_pages/_export_counter_pages.dart';
import 'package:ex_counter_mobx/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../counter_pages/store/counter_store.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final counter = CounterStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: CounterPage(),
      ),
    );
  }
}
