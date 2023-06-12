import 'dart:math';

import 'package:flutter/material.dart';

class RandomPage extends StatefulWidget {
  const RandomPage({Key? key}) : super(key: key);

  @override
  State<RandomPage> createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {
  final int _randomNumber = 0;
  int _count = 0;
  final bool _progress = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Page'),
      ),
      body: Column(
        children: [
          /*Text('Random Numeric: $_randomNumber'),
          ElevatedButton(
            onPressed: () async {
              setState(() {
                _progress = true;
              });
              _randomNumber = await _generateRandomNumber();
              setState(() {
                _progress = false;
              });
            },
            child: const Text('Numero randomico'),
          ),*/
          ElevatedButton(
            onPressed: () async {
              await for (int i in _countForOneMinute()) {
                setState(() {
                  debugPrint('$i');
                  _count = i;
                });
              }
            },
            child: const Text('Numero Streamado'),
          ),
          Text('Contador: $_count'),
          /*StreamBuilder(
            stream: _countForOneMinute(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('Error'),
                );
              }
              return Text('Contador: ${snapshot.data}');
            },
          ),*/
          Visibility(
            visible: _progress,
            child: const CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }

  Future<int> _generateRandomNumber() async {
    var random = Random();
    await Future.delayed(
      const Duration(seconds: 3),
    );
    return random.nextInt(6);
  }

  Stream<int> _countForOneMinute() async* {
    for (int i = 0; i < 60; i++) {
      await Future.delayed(
        const Duration(seconds: 1),
      );
      yield i;
    }
  }
}
