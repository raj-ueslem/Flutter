import 'dart:convert';
import 'package:ex_four_json/model/_export_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> _list = [];
  List<Animal> _imageList = [];

  ListTile _rowListTile(int index) => ListTile(
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                clipBehavior: Clip.antiAlias,
                child: Icon(Icons.import_contacts_sharp),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(_list[index]['name'])
          ],
        ),
      );

  ListView _listView() => ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return _rowListTile(index);
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _listView(),
    );
  }

  @override
  void initState() {
    super.initState();
    _animalState();
  }

  void _animalState() {
    setState(() {
      _list = jsonDecode(MockModel.mockAnimal());
    });
  }
}
