import 'package:flutter/material.dart';

class PadComponent extends Padding {
  const PadComponent({Key? key, required child, required padding}): super(key: key, child: child, padding: padding);

  Widget build(BuildContext context) {
    return Padding(padding: padding, child: child,);
  }
}
