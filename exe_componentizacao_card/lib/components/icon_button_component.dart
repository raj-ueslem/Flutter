import 'package:flutter/material.dart';

class IconButtonComponent extends IconButton {
  
  final Widget newIcon;
  final VoidCallback newOnPressed;
  
  const IconButtonComponent({Key? key, 
    required this.newIcon, 
    required this.newOnPressed}) : 
        super(key: key, 
          icon: newIcon, 
          onPressed: newOnPressed);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: newOnPressed, icon: newIcon);
  }
}
