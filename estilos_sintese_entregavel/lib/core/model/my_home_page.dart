import 'package:estilos_sintese_entregavel/core/component/grupo_a_box_sintese_component.dart';
import 'package:estilos_sintese_entregavel/html_convert/mock/_export_mock.dart';
import 'package:estilos_sintese_entregavel/html_convert/model/grupo_a_box_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String lorem =
      ('Sed tincidunt massa mollis, bibendum nisi ac, vulputate orci. Donec mauris velit, luctus in purus sed, semper pharetra mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas velit risus, dignissim molestie facilisis sit amet, porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec convallis pharetra ante, suscipit iaculis leo bibendum nec. Sed eleifend tellus leo, et pellentesque nisl tristique vel. Maecenas sed velit nec lacus ornare pretium cursus et ante.');
  String title = ('Em síntese');
  var grupoAbox = ConvertGrupoABoxModel.convertGrupoABox(GrupoABoxMock.html);
  var grupoAboxToString =
      ConvertGrupoABoxModel.convertGrupoABox(GrupoABoxMock.html).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: GrupoABoxComponent(
          title: "Grupo a box component",
          html: grupoAboxToString,
          grupoABox: grupoAbox,
        ),
      ),
    );
  }
}
