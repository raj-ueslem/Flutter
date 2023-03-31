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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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

    String imageScreen = 'http://s2.glbimg.com/h3Duok3KWVA8yaIOzZZIESkNLC4DKPsVVGWWhNMHhpNIoz-HdGixxa_8qOZvMp3w/e.glbimg.com/og/ed/f/original/2013/08/02/imagem_para_sexta_51.jpg';

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          //Image.network(imageScreen),
          FadeInImage.assetNetwork(
              placeholder: 'assets/load.gif',
              image: 'http://s2.glbimg.com/h3Duok3KWVA8yaIOzZZIESkNLC4DKPsVVGWWhNMHhpNIoz-HdGixxa_8qOZvMp3w/e.glbimg.com/og/ed/f/original/2013/08/02/imagem_para_sexta_51.jpg'
          ),
          const Positioned(
            left: 200,
            top: 60,
            child: Text('IOs and Android in love s2', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          // Container(
          //   width: 110,
          //   height: 110,
          //   color: Colors.black,
          // ),
          // Container(
          //   width: 100,
          //   height: 100,
          //   color: Colors.grey,
          // ),
          // Container(
          //   width: 90,
          //   height: 90,
          //   color: Colors.green,
          // ),
          // Align(
          //   alignment: Alignment.center,
          //   child: Container(
          //     alignment: Alignment.center,
          //     width: 80,
          //     height: 80,
          //     color: Colors.red,
          //     child: const Text('A', style: TextStyle(fontSize: 40),),
          //   ),
          // ),
          // Positioned(
          //   right: 20,
          //   top: 20,
          //   child: Container(
          //     width: 90,
          //     height: 90,
          //     color: Colors.yellow,
          //   ),
          // ),
          // Positioned(
          //   right: 20,
          //   bottom: 20,
          //   child: Container(
          //     width: 90,
          //     height: 90,
          //     color: Colors.indigo,
          //   ),
          // ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
