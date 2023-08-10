import 'package:easy_localization/easy_localization.dart';
import 'package:ex_http_ricky_and_morry/my_app.dart';
import 'package:flutter/material.dart';

import 'translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('pt', 'BR'),
      ],
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}
