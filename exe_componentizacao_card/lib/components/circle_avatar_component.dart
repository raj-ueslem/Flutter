import 'package:flutter/material.dart';

class CircleAvatarComponent extends CircleAvatar {

  final Widget? newChild;

  const CircleAvatarComponent({Key? key, this.newChild}) : super(key: key, child: newChild);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(child: newChild,);
  }
}
