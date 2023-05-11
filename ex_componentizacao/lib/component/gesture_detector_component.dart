import 'package:flutter/material.dart';

class GestureDetectorComponent extends StatelessWidget {

  final VoidCallback onTap;
  final Widget child;

  const GestureDetectorComponent({
    Key? key,
    required this.onTap,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
    );
  }
}
