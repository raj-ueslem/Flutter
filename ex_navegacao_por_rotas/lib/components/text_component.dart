import 'package:flutter/material.dart';

class TextComponent extends Text {

  final String child;

  const TextComponent({Key? key, required this.child}): super(child, key: key);

  @override
  Widget build(BuildContext context) {
    return Text(child);
  }
}