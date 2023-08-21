import 'package:ex_mobx_v2/person/store/_export_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../person/model/_export_person.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*List<PersonModel> people = [
    PersonModel.fromMap({
      "id": 1,
      "firstName": "Ueslem",
      "lastName": "Pagani",
      "active": true,
    }),
    PersonModel.fromMap({
      "id": 2,
      "firstName": "Rodrigo",
      "lastName": "Castro",
      "active": false,
    }),
  ];*/

  final _personStore = PersonStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (context) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 50,
                width: 50,
                child: _personStore.progressListName
                    ? const CircularProgressIndicator(
                        color: Colors.green,
                      )
                    : const SizedBox(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 50,
                width: 50,
                child: _personStore.progressListLastName
                    ? const CircularProgressIndicator(
                        color: Colors.red,
                      )
                    : const SizedBox(),
              ),
            ),
            SizedBox(
              height: 400,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: _personStore.getList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      print('clicou');
                    },
                    leading: _personStore.getList[index].active!
                        ? const Icon(Icons.people)
                        : const Icon(Icons.exit_to_app),
                    title: Row(
                      children: [
                        Text(_personStore.getFullNameAtPosition(index: index)),
                        // (_personStore.getFirstFullName),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addPerson(),
      ),
    );
  }

  _addPerson() async {
    await _personStore.shuffleFirstName();
    await _personStore.shuffleLastName();
    await _personStore.addPerson();
  }

  /*_addPerson() {
    setState(
      () {
        _personStore.people.add(
          PersonModel.fromMap(
            {"id": 000, "firstName": "aaa", "lastName": "bbb", "active": true},
          ),
        );
      },
    );
  }*/
  //'${_personStore.getList[index].firtName} ${_personStore.getList[index].lastName}'
}
