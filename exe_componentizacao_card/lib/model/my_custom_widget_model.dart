import 'package:exe_componentizacao_card/components/_export_components.dart';
import 'package:flutter/material.dart';

class MyCustomWidgetModel extends StatelessWidget {
  final VoidCallback onTap;
  const MyCustomWidgetModel({Key? key, required this.onTap}): super(key: key);

  TextComponent _rowText() => const TextComponent(data: 'Waleed Arshad');

  TextComponent _rowText2() => const TextComponent(data: 'waleed@gmail.com');

  Column _rowColumnTexts() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _rowText(),
      _rowText2()
    ],
  );

  PadComponent _rowPadding() => PadComponent(
    padding: const EdgeInsets.only(left: 8.0),
    child: _rowColumnTexts(),
  );

  CircleAvatarComponent _rowAvatarCircleView() => const CircleAvatarComponent(
    newChild: TextComponent(data: 'WA'),
  );

  Icon _rowIcon() => const Icon(Icons.star_border);

  Expanded _rowExpanded() => Expanded(
    child: _rowPadding(),
  );

  TextComponent _rowText3(context) => TextComponent(
    data: 'This is an article, trying to explain custom callbacks inside custom widgets.'
        ' Let\'s just add some more text just to make it a bulky description.',
    textAlign: TextAlign.justify,
    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey),
  );

  PadComponent _rowPadding2(context) => PadComponent(
    padding: const EdgeInsets.only(top: 8.0),
    child: _rowText3(context),
  );

  Column _columWithInternalRow(context) => Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _rowAvatarCircleView(),
          _rowExpanded(),
          _rowIcon(),
        ],
      ),
      _rowPadding2(context),
    ],
  );

  PadComponent _rowPadding3(context) => PadComponent(
    padding: const EdgeInsets.all(16.0),
    child: _columWithInternalRow(context),
  );

  CardComponent _gestureCard(context) => CardComponent(
    newElevation: 4.0,
    newChild: _rowPadding3(context),
  );

  GestureDetectorComponent _gestureDetector(context) => GestureDetectorComponent(newOnTap: () {onTap;},
    newChild: _gestureCard(context),
  );

  @override
  Widget build(BuildContext context) {
    return _gestureDetector(context);
  }
}