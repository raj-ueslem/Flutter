// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_US = {
  "seek_character": "Seek Character",
  "see_char": "See Char",
  "no_data": "No data, click the button",
  "detail": "Detail Page"
};
static const Map<String,dynamic> pt_BR = {
  "seek_character": "Buscar Personagem",
  "see_char": "Ver Char",
  "no_data": "Sem dados, clique no botão",
  "detail": "Pagina de Detalhe"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US, "pt_BR": pt_BR};
}
