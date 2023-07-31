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
  "hello": "hello",
  "screens": {
    "titles": {
      "message": "Welcome"
    }
  },
  "message": "{} are written in the {} language",
  "message_named": "Easy localization is written in the {language} language",
  "message_mixed": "{} are written in the {language} language",
  "example": {
    "hello": "Hello",
    "world": "World!",
    "helloWorld": "@:example.hello @:example.world"
  }
};
static const Map<String,dynamic> pt_BR = {
  "hello": "Olá",
  "screens": {
    "titles": {
      "message": "Seja bem vindo"
    }
  },
  "message": "{} foi escrito em linguagem {}",
  "message_named": "Easy localization foi escrito em linguagem {language}",
  "message_mixed": "{} foi escrito em linguagem {language}",
  "example": {
    "hello": "Olá",
    "world": "Mundo!",
    "helloWorld": "@:example.hello @:example.world"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US, "pt_BR": pt_BR};
}
