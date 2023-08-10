import '../model/_export_character_response_model.dart';

abstract class CharacterServiceInterface {
  Future<List<CharacterResponseModel>>? getAllCharacters();
  Future<CharacterResponseModel>? getChar({
    required int id,
  });
}
