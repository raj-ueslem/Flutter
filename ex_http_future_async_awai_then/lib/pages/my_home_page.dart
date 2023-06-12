import 'package:ex_http_future_async_awai_then/pages/_export_pages.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _response = '...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HTTPPage(),
                ),
              );
            },
            child: const Text('Abrir tela HTTP'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RandomPage(),
                ),
              );
            },
            child: const Text('Abrir tela Random'),
          ),

          /*Text(
            _getName(),
          ),
          ElevatedButton(
            onPressed: () async {
              debugPrint(_getName());
              debugPrint(await _sayHello());

              // _awaitForMe();
              // debugPrint('passou pelo await');

              _awaitForMe().then((_) => (value) {
                    debugPrint('Passou no then');
                  });
              _awaitForMe()
                  .then((_) => (value) {
                        debugPrint('Passou no then');
                      })
                  .catchError((onError) {
                debugPrint('Passou no then, com Catch. deu erro');
              });
            },
            child: const Text('Clique aqui'),
          ),*/
        ],
      ),
    );
  }

  String _getName() => "Boizão";

  Future<String> _sayHello() async {
    var name = 'Hello';
    return name;
  }

  Future _awaitForMe() {
    debugPrint('Iniciou');
    return Future.delayed(
      const Duration(seconds: 5),
      () {
        debugPrint('finalizou');
        setState(() {
          _response = 'Novo Conteúdo';
        });
      },
    );
  }
}
