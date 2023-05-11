import 'package:flutter/material.dart';

class TextClickComponent extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;

  const TextClickComponent({Key? key, required this.onTap, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }
}
