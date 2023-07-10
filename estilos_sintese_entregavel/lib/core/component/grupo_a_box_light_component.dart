import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GrupoABoxLightComponent extends StatefulWidget {
  final String content;
  final String title;

  const GrupoABoxLightComponent(
      {super.key, required this.content, required this.title});

  @override
  State<GrupoABoxLightComponent> createState() =>
      _GrupoABoxLightComponentState();
}

class _GrupoABoxLightComponentState extends State<GrupoABoxLightComponent> {
  BoxDecoration _boxDecorationExternalCustom() => BoxDecoration(
          color: const Color(0xff4b50b9),
          border: Border.all(width: 1, color: const Color(0xffd4dce3)),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 4.0, // soften the shadow
              spreadRadius: 1.0, //extend the shadow
              offset: const Offset(
                3.0, // Horizontal
                3.0, // Vertical
              ),
            )
          ]);

  Widget _rowIconTextCustom() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xff4b50b9),
            ),
          ),
        ],
      );

  Widget _rowIconFileDocument() => Row(
        children: [
          Icon(
            MdiIcons.fileDocumentEditOutline,
            color: const Color(0xff4b50b9),
          ),
        ],
      );

  Widget _paddingCustomInternalContainer() => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 18),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffd4dce3),
                      borderRadius: BorderRadius.circular(6)),
                  padding: const EdgeInsets.all(16),
                  child: _rowIconFileDocument(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24, right: 24, left: 94),
            child: Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                  _rowIconTextCustom(),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(widget.content),
                ],
              ),
            ),
          ),
        ],
      );

  Widget _rowContainerWhiteCompleted() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
                child: _paddingCustomInternalContainer(),
              ),
            ),
          )
        ],
      );

  Stack _stackWidgetStylized() => Stack(
        alignment: Alignment.centerLeft,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      decoration: _boxDecorationExternalCustom(),
                      child: _rowContainerWhiteCompleted()),
                ),
              ),
            ],
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _stackWidgetStylized(),
            ],
          ),
        ),
      ),
    );
  }
}
