import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

  final double containerHeight = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: containerHeight,
              width: double.infinity,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: containerHeight,
              width: double.infinity,
              color: Colors.orange,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: containerHeight,
              width: double.infinity,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}