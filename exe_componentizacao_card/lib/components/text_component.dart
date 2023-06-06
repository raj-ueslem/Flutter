import 'package:flutter/material.dart';

class TextComponent extends Text {



  const TextComponent({Key? key, required String data, textAlign, style}) : super(key: key, data);

  @override
  Widget build(BuildContext context) {
    return Text(data ?? '',
      textAlign: textAlign,
      style: style,
    );
  }
}