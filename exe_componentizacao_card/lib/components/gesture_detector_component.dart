import 'package:flutter/material.dart';

class GestureDetectorComponent extends GestureDetector {

  final VoidCallback newOnTap;
  final Widget newChild;

  GestureDetectorComponent(
      {Key? key,
        required this.newOnTap,
        required this.newChild}) :
        super(key: key,onTap: newOnTap, child: newChild);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: newOnTap, child: newChild,);
  }
}
