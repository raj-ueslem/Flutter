import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HTTPPage extends StatefulWidget {
  const HTTPPage({Key? key}) : super(key: key);

  @override
  State<HTTPPage> createState() => _HTTPPageState();
}

class _HTTPPageState extends State<HTTPPage> {
  late String _query;
  bool _progress = false;
  int _itemsCount = 0;
  String _description = "";

  _rowTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onFieldSubmitted: (value) async {
        debugPrint('Valor recebido: $value');
        setState(() {
          _progress = true;
        });
        await _fetchGoogleAPIResponse(query: value);
        setState(() {
          _progress = false;
        });
      },
    );
  }

  _rowProgress() {
    return Visibility(
      visible: _progress,
      child: const CircularProgressIndicator(),
    );
  }

  _rowItemCount() => Text('numero de livros encontrados: $_itemsCount');

  _rowDescription() => Text('Descrição: $_description');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP Page'),
      ),
      body: Column(
        children: [
          _rowTextFormField(),
          _rowProgress(),
          _rowItemCount(),
          _rowDescription(),
        ],
      ),
    );
  }

  Future<bool> _fetchGoogleAPIResponse({required String query}) async {
    // await Future.delayed(
    //   const Duration(seconds: 5),
    // );
    var url =
        Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': query});
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['totalItems'];
      var description = jsonResponse['items'][0]['volumeInfo']['description'];
      debugPrint('Numero de livros: $itemCount');
      setState(() {
        _itemsCount = itemCount;
        _description = description;
      });
      return true;
    } else {
      debugPrint('deu pau no request');
    }
    return true;
  }
}
