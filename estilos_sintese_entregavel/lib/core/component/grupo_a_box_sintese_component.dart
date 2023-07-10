import 'package:estilos_sintese_entregavel/core/component/_export_core.dart';
import 'package:flutter/material.dart';

class GrupoABoxComponent extends StatelessWidget {
  final String title;
  final String html;
  final Map<String, String> grupoABox;

  const GrupoABoxComponent(
      {super.key,
      required this.html,
      required this.grupoABox,
      required this.title});

  @override
  Widget build(BuildContext context) {
    String templateType = grupoABox['template-type'].toString();

    switch (templateType) {
      case "boxLight":
        return GrupoABoxLightComponent(
          content: html,
          title: title,
        );
      case "boxColor":
        return GrupoABoxColorComponent(
          content: html,
          title: title,
        );
      default:
        return GrupoABoxBackgroundComponent(
          content: html,
          title: title,
        );
    }
  }
}
