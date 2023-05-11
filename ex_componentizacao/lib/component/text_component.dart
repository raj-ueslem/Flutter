import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String title;
  final double fontSize;
  final TextAlign textAlign;

  const TextComponent({
    super.key,
    required this.title,
    this.fontSize = 20.0,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context){
    return Text(
      title,
      style: TextStyle(
          fontSize: fontSize),
      textAlign: textAlign,
    );
  }
}