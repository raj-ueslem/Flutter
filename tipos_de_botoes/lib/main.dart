import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    Widget textButtonDesable() => const TextButton(
        onPressed: null,
        key: Key("main_button_desable"),
        child: Text(
          'Desable',
        ));

    Widget textButtonEnable() => TextButton(
          onPressed: sendSimplePrint,
          key: const Key("main_button_enabled"),
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
          child: const Padding(
            padding: EdgeInsets.all(20),
            child: Text('Enabled'),
          ),
        );

    Widget textIconButtonAdd() => TextButton.icon(
          onPressed: sendSimplePrint,
          key: const Key('main_add_button'),
          icon: const Icon(Icons.add),
          label: const Text('Add'),
        );

    Widget outlinedButton() => OutlinedButton(
        onPressed: () => sendPrint('asads'),
        child: const Text("Clicou no outLined"));

    Widget iconButtonVolumeUp() =>
        IconButton(onPressed: increaseValue, icon: const Icon(Icons.volume_up));

    Widget showTextVolume() =>
        Text("Volume $value", key: const Key("main_text_1"));

    Widget elevatedButtonOk() => ElevatedButton(
        onPressed: sendSimplePrint,
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
          backgroundColor: Colors.amber,
        ),
        child: const Text("ok"));

    Widget floatingActionButtonSmallAdd() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("small"),
            const SizedBox(
              width: 16,
            ),
            FloatingActionButton.small(
              onPressed: sendSimplePrint,
              child: const Icon(Icons.add),
            ),
          ],
        );

    Widget floatingActionButtonAdd() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Normal"),
            const SizedBox(
              width: 16,
            ),
            FloatingActionButton(
              onPressed: sendSimplePrint,
              child: const Icon(Icons.add),
            ),
          ],
        );

    Widget floatingActionButtonLargeAdd() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Large"),
            const SizedBox(
              width: 16,
            ),
            FloatingActionButton.large(
              onPressed: sendSimplePrint,
              child: const Icon(Icons.add),
            ),
          ],
        );

    Widget floatingActionButtonExtendsAdd() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Extend"),
            const SizedBox(
              width: 16,
            ),
            FloatingActionButton.extended(
              onPressed: sendSimplePrint,
              icon: const Icon(Icons.add),
              label: const Text("Extend"),
            ),
          ],
        );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          textButtonDesable(),
          textButtonEnable(),
          textIconButtonAdd(),
          outlinedButton(),
          iconButtonVolumeUp(),
          showTextVolume(),
          elevatedButtonOk(),
          floatingActionButtonSmallAdd(),
          floatingActionButtonAdd(),
          floatingActionButtonLargeAdd(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: sendSimplePrint,
        backgroundColor: Colors.yellow,
        icon: const Icon(Icons.add_circle),
        label: const Text('Curtir'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  sendSimplePrint() => print('clicou');

  sendPrint(String message) => print(message);

  increaseValue() => setState(() {
        value += 5;
      });
}
