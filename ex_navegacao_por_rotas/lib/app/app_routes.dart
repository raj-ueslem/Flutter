import 'package:ex_navegacao_por_rotas/pages/_export_pages.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const appRouteHome = '/';
  static const appRouteA = '/a_page';
  static const appRouteB = '/b_page';
  static const appRouteAbout = '/about_page';

  Route getRoutes(RouteSettings routeSettings) {
    switch(routeSettings.name) {
      case appRouteHome:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const MyHomePage(title: "Navegação por Rotas"),);
      case appRouteA:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const Apage(),);
      case appRouteB:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const BPage(),);
      case appRouteAbout:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const AboutPage(),);
      default:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const MyHomePage(title: "Navegação por Rotas"),);
    }
  }
}