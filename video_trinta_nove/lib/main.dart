import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    String hyperLink =
        'https://scontent.fria4-1.fna.fbcdn.net/v/t1.6435-9/138661173_1057033074809632_8835808435703499469_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=973b4a&_nc_ohc=poEJ0o1SqpAAX_Ku7Kh&_nc_ht=scontent.fria4-1.fna&oh=00_AfADf0bWvpKNFuXQl9QCwpJxNIWMqr7N5zAqU-qs9W_n1w&oe=6436BF3C';
    String hyperBart =
        'https://images7.memedroid.com/images/UPLOADED894/5f0502441774c.jpeg';

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.amber,
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'aaaa',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: const EdgeInsets.all(20),
                color: Colors.black,
                width: screenWidth,
                child: const Center(
                  child: Text(
                    'Titulo',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Container(
                color: Colors.green,
                child: const Text(
                  'a',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                color: Colors.blue,
                child: const Text(
                  'a',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Container(
                constraints: const BoxConstraints(
                  maxHeight: 200,
                  maxWidth: 100,
                  minWidth: 70,
                  minHeight: 50,
                ),
                color: Colors.yellow,
                child: const Text(
                  'b',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                constraints:
                    const BoxConstraints(minHeight: 110, minWidth: 110),
                color: Colors.black,
                child: Row(
                  children: [
                    Image.network(
                      hyperLink,
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      hyperBart,
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(hyperBart), fit: BoxFit.cover),
              border: Border.all(
                color: Colors.black,
                width: 8
              ),
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(10, 10),
                  blurRadius: 10,
                  spreadRadius: 2.0
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
