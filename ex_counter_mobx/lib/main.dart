import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'pages/_export_pages.dart';
import 'translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('pt', 'BR'),
        Locale('en', 'US'),
      ],
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale('pt', 'BR'),
      child: const MyApp(),
    ),
  );
}
