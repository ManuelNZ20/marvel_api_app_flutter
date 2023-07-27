import 'package:flutter/material.dart';
import 'buttons_appbar.dart';

class AppBarComicsHome extends StatelessWidget {
  const AppBarComicsHome({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonsAppBar(iconData: Icons.menu, onPressed: (){}),
            Image.asset('assets/images/logoMarvel.png',
            height: size.height*.05,
            ),
            ButtonsAppBar(iconData: Icons.search_outlined, onPressed: (){}),
          ],
        ),
      ),
    );
  }
}
