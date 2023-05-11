import 'package:flutter/material.dart';

class TextNewComponents extends Text {

  const TextNewComponents({
    Key? key,
    required String data,
  }): super(data, key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data ?? '');
  }
}