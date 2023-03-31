import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App title',
      debugShowCheckedModeBanner: false,
      home: MyStateFulApp(),
    );
  }
}


class MyStateFulApp extends StatefulWidget {
  const MyStateFulApp({Key? key}) : super(key: key);

  @override
  State<MyStateFulApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyStateFulApp> {
  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('App bar'),),
      body: Row(
        children: [
          Expanded(
              child: Container(
                height: _height * 0.2,
                color: _height<_width? Colors.orange : Colors.indigo,
              ),
          ),
          
          Expanded(
            child: Container(
              height: _height * 0.2,
              color: Colors.black,
            ),
          ),
          // Container(
          //   height: height * 0.5,
          //   width: width * 0.5,
          //   color: Colors.orange,
          // ),

          // ElevatedButton(
          //     onPressed: (){
          //       print('Clicou');
          //       print('Largura da tela: $height, $width');
          //     },
          //     child: const Text('Ok'))
        ],
      ),
    );
  }
}
