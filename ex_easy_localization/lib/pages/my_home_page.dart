import 'package:easy_localization/easy_localization.dart';
import 'package:ex_easy_localization/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Text(
            LocaleKeys.message.tr(
              args: ['Flutter', 'Dart'],
            ),
          ),
          Text(
            LocaleKeys.message_named.tr(
              namedArgs: {"language": "Java"},
            ),
          ),
          Text(
            LocaleKeys.message_mixed.tr(
              args: ['flutter'],
              namedArgs: {"language": "Dart"},
            ),
          ),
          Text(
            LocaleKeys.example_helloWorld.tr(),
          ),
          Text(
            LocaleKeys.hello.tr(),
          ),
        ],
      ),
    );
  }
}
