import 'package:flutter/material.dart';

class LinearProgressIndicatorComponent extends StatelessWidget {
  final double progressPercentage;

  const LinearProgressIndicatorComponent({
    Key? key,
    required this.progressPercentage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12),
      ),
      child: LinearProgressIndicator(
        value: progressPercentage,
        minHeight: 20,
        backgroundColor: Colors.white,
        color: const Color(0xff00A285),
      ),
    );
  }
}
