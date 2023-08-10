import 'package:ex_http_ricky_and_morry/character/model/character_response_model.dart';
import 'package:ex_http_ricky_and_morry/character/model_header/_export_model_header.dart';
import 'package:ex_http_ricky_and_morry/constant.dart';
import 'package:ex_http_ricky_and_morry/core/network/_export_network.dart';
import 'package:flutter/cupertino.dart';

import '../interface/_export_service_interface.dart';

class CharacterService extends CharacterServiceInterface {
  final Network httpNetwork;

  CharacterService(this.httpNetwork);

  @override
  Future<List<CharacterResponseModel>>? getAllCharacters() async {
    try {
      final response = await httpNetwork.get(
        url: '${Constant.baseUrl}${Constant.chacaracterEndPoint}',
        headers: CharacterHeader.getCharacterHeaders(),
      );

      List<CharacterResponseModel> characteres = response['results']
          .map<CharacterResponseModel>(
            (char) => CharacterResponseModel.fromMap(char),
          )
          .toList() as List<CharacterResponseModel>;

      return characteres;
    } catch (e) {
      debugPrint('error: $e');
      rethrow;
    }
  }

  @override
  Future<CharacterResponseModel>? getChar({required int id}) async {
    try {
      final response = await httpNetwork.get(
        url: '${Constant.baseUrl}${Constant.chacaracterEndPoint}$id',
        headers: CharacterHeader.getCharacterHeaders(),
      );

      return CharacterResponseModel.fromMap(response);
    } catch (e) {
      debugPrint('error: $e');
      rethrow;
    }
  }
}
