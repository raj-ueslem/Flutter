import 'package:easy_localization/easy_localization.dart';
import 'package:ex_http_ricky_and_morry/character/model/_export_character_response_model.dart';
import 'package:ex_http_ricky_and_morry/character/service/_export_service.dart';
import 'package:ex_http_ricky_and_morry/core/network/_export_network.dart';
import 'package:ex_http_ricky_and_morry/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ViewCharDetail extends StatefulWidget {
  final int id;

  const ViewCharDetail({Key? key, required this.id}) : super(key: key);

  @override
  State<ViewCharDetail> createState() => _ViewCharDetailState();
}

class _ViewCharDetailState extends State<ViewCharDetail> {
  CharacterResponseModel? char;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.detail.tr()),
      ),
      body: Column(
        children: [
          Text('ID: = ${widget.id}'),
          char?.image == null ? const SizedBox() : Image.network(char!.image),
          Text(char?.name ?? ''),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _getSingleChar();
  }

  _getSingleChar() async {
    final characterService = CharacterService(Network(http.Client()));
    char = await characterService.getChar(id: widget.id);
    setState(() {});
  }
}
