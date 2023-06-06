import 'package:flutter/material.dart';

class CardComponent extends Card {

  final Widget newChild;
  final double? newElevation;

  const CardComponent({Key? key, required this.newChild, this.newElevation}) : super(key: key, child: newChild, elevation: newElevation);

  @override
  Widget build(BuildContext context) {
    return Card(elevation: newElevation ?? 0,child: newChild,);
  }
}
