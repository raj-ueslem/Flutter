import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true
      ),
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

  //Apenas Widgets...

  Widget rowText1() => const Text('aaaa');

  Widget rowText2() => const Text('bbbb');

  Widget rowText3() => const Text('cccc');

  Widget rowTextGeneral(String mesage) => Text(mesage);

  Widget rowElevatedButton() => const ElevatedButton(
      onPressed: null,
      child: Text('Ok'),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          rowText1(),
          rowText2(),
          rowText3(),
          rowTextGeneral("eai"),
          rowElevatedButton(),
        ],
      ),
    );

    sendMesage() {
      print("Mensagem");
    }

  }
}
