import 'package:ex_navegacao_por_rotas/app/_export_app.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navegação por Rotas',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(background: Colors.white38),
      ),
      initialRoute: '/',
      // home: const MyHomePage(title: 'Flutter Navegação por Rotas'),
      onGenerateRoute: App().getAppRoutes().getRoutes,
    );
  }
}