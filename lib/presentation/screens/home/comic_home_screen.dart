import 'package:flutter/material.dart';
import '../../widgets/comics/comics_home_page.dart';
import '../../widgets/shared/appbar_comics_home.dart';

class HomeScreenComic extends StatelessWidget {
  const HomeScreenComic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
        body: SizedBox.expand(
          child: Stack(
            children: [
              // appBar
              ComicsPage(),
              //appBar
              AppBarComicsHome(),
            ],
          ),
        )
      );
  }
}


