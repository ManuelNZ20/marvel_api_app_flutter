import 'package:flutter/material.dart';

class ButtonsAppBar extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final VoidCallback onPressed;

  const ButtonsAppBar(
      {super.key, required this.iconData, iconColor, required this.onPressed})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        color: Colors.white,
        onPressed: onPressed,
        icon: Icon(
          iconData,
          color: color,
          size: 30,
          
        ));
  }
}
