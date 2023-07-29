import 'package:flutter/material.dart';
import '../../../config/helper/app_text_style.dart';

class ButtonComics extends StatelessWidget {
  const ButtonComics({
    super.key,
    required this.label,
    required this.iconData,
    required this.onPressed
  });

  final String label;
  final IconData iconData;
  final VoidCallback onPressed;
  
  @override
  Widget build(BuildContext context) {
    final txtStyleComics = TextStyleDetailComics();
    return ElevatedButton.icon(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.red),
            foregroundColor: MaterialStatePropertyAll(Colors.white)),
        onPressed: onPressed,
        icon: Icon(iconData),
        label: Text(
          label,
          style: txtStyleComics.textStyleDetails(Colors.white, 12),
        ));
  }
}
