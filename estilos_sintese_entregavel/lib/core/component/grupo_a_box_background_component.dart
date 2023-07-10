import 'package:flutter/material.dart';

class GrupoABoxBackgroundComponent extends StatefulWidget {
  final String content;
  final String title;

  const GrupoABoxBackgroundComponent(
      {super.key, required this.content, required this.title});

  @override
  State<GrupoABoxBackgroundComponent> createState() =>
      _GrupoABoxBackgroundComponentState();
}

class _GrupoABoxBackgroundComponentState
    extends State<GrupoABoxBackgroundComponent> {
  Widget _dividerComponent() => Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 100,
          right: 100,
        ),
        child: Container(
          height: 3,
          width: double.maxFinite,
          color: const Color(0xff255b98),
        ),
      );

  Widget _rowIconTextCustom() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(fontSize: 16, color: Color(0xff255b98)),
          ),
        ],
      );

  Widget _paddingCustomInternalContainer() => Padding(
        padding: const EdgeInsets.only(bottom: 24, right: 24, left: 54),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            _rowIconTextCustom(),
            const SizedBox(
              height: 16,
            ),
            Text(widget.content),
          ],
        ),
      );

  Widget _ContainerWhiteCompleted() => Container(
        decoration: BoxDecoration(
          color: const Color(0xffd4dce3),
          borderRadius: BorderRadius.circular(6),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _dividerComponent(),
            _paddingCustomInternalContainer(),
          ],
        ),
      );

  Widget _stackWidgetBackground() => Stack(
        alignment: Alignment.centerLeft,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Column(
                    children: [
                      _ContainerWhiteCompleted(),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _stackWidgetBackground(),
            ],
          ),
        ),
      ),
    );
  }
}
