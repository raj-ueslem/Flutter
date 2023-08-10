import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../character/model/_export_character_response_model.dart';
import '../character/page/_export_page_view_char_detail.dart';
import '../character/service/_export_service.dart';
import '../core/network/_export_network.dart';
import '../translations/locale_keys.g.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _progressIndicator() =>
      _progress ? const CircularProgressIndicator() : const SizedBox();

  Widget _searchChacaracter() => OutlinedButton(
        onPressed: () => _getAllCaractersV2(),
        child: Text(LocaleKeys.seek_character.tr()),
      );

  Widget _createListToShowChacaraters() => Expanded(
        child: ListView.builder(
          itemCount: _characteres.length,
          itemBuilder: (context, index) {
            if (_characteres.isEmpty) {
              return Text(LocaleKeys.no_data.tr());
            } else {
              return ListTile(
                leading: Image.network(_characteres[index].image),
                trailing: TextButton(
                  onPressed: () =>
                      _getSingleChar(id: _characteres.elementAt(index).id),
                  child: Text(LocaleKeys.see_char.tr()),
                ),
                title: Text(_characteres[index].name),
              );
            }
          },
        ),
      );

  // var result = [];
  late List<CharacterResponseModel> _characteres = [];
  bool _progress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          _createListToShowChacaraters(),
          _progressIndicator(),
          _searchChacaracter(),
        ],
      ),
    );
  }

  _getSingleChar({required int id}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewCharDetail(id: id),
      ),
    );
  }

  _getAllCaractersV2() async {
    final characterService = CharacterService(
      Network(
        http.Client(),
      ),
    );
    _progress = true;
    _characteres = (await characterService.getAllCharacters())!;
    _progress = false;
    setState(() {});
  }

  /*_getAllCaractersV1() async {
    String baseUrl = 'rickandmortyapi.com';
    String endPoint = '/api/character';
    var url = Uri.https(baseUrl, endPoint);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      result = jsonResponse['results'];
      debugPrint('results $result');
      debugPrint('results[0] ${result[0]}');
    } else {
      debugPrint('Request fail: ${response.statusCode}');
    }
  }*/
}
/*  static const myhomepage2 = 'myhomepage';

  static const seekCharacter = 'myhomepage.seekcharacter';
  static const seeChar = 'myhomepage.seechar';
  static const noData = 'myhomepage.nodata';

  static const detail = 'viewchardetail.detail';*/
