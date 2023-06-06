import 'package:ex_navegacao_por_rotas/app/_export_app.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {

  static const App _instance = App._internal();

  const App._internal();

  factory App() => _instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: getAppRoutes().getRoutes,
    );
  }

  AppRoutes getAppRoutes() => AppRoutes();
}
