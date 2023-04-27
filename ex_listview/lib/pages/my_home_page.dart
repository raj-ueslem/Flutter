import 'package:ex_listview/model/export_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final mock = MockModel();

  Widget _columnEntriesAndColorsCode(int index) => Container(
    height: 300,
    color: Colors.red[mock.colorsCodes[index]],
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Center(child: Text(mock.entries[index]),),),
  );

  Widget _columnContainerDeepOrange() => Container(
      color: Colors.deepOrange,
      height: 300,
      width: double.infinity,
  );
  Widget _columnContainerOrange() => Container(
      color: Colors.orange,
      height: 300,
      width: double.infinity
  );
  Widget _columnContainerGreen() => Container(
    color: Colors.green,
    height: 300,
    width: double.infinity,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(20.0),
            itemCount: mock.entries.length,
            itemBuilder: (BuildContext context, int index) {
              return _columnEntriesAndColorsCode(index);
            },
        ),
    );
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: Text(widget.title),
  //       ),
  //       body: ListView(
  //         children: [
  //           // _columnContainerDeepOrange(),
  //           // _columnContainerOrange(),
  //           // _columnContainerGreen(),
  //
  //
  //         ],
  //       )
  //   );
  // }
}