import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GrupoABoxColorComponent extends StatefulWidget {
  final String content;
  final String title;

  const GrupoABoxColorComponent(
      {super.key, required this.content, required this.title});

  @override
  State<GrupoABoxColorComponent> createState() => _GrupoABoxColorComponentState();
}

class _GrupoABoxColorComponentState extends State<GrupoABoxColorComponent> {
  Widget _rowIconText() => Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xff4b50b9),
            ),
          ),
        ],
      );

  Widget _rowIconTextCustom() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _rowIconText(),
        ],
      );

  Widget _expandedContainerDecoration() => Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff4b50b9).withOpacity(0.1),
                border: Border.all(
                  width: 1,
                  color: const Color(0xff4b50b9),
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: _paddingCenterText()),
        ),
      );

  Padding _paddingCenterText() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            _rowIconTextCustom(),
            const SizedBox(
              height: 16,
            ),
            Text(widget.content),
          ],
        ),
      );

  Container _containerIconCustom() => Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color(0xff4b50b9),
            border: Border.all(width: 3, color: Colors.white)),
        child: Icon(MdiIcons.scriptTextOutline, color: Colors.white),
      );

  Widget _stackWidgetAttention() => Stack(
        alignment: Alignment.topCenter,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_expandedContainerDecoration()],
          ),
          _containerIconCustom()
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _stackWidgetAttention(),
          ],
        ),
      ),
    );
  }
}
