import 'package:app_comics_marvel1/presentation/widgets/shared/drawer_comics_home.dart';
import 'package:flutter/material.dart';
import '../../widgets/comics/comics_home_page.dart';
import '../../widgets/shared/appbar_comics_home.dart';

class HomeScreenComic extends StatelessWidget {
  const HomeScreenComic({super.key});

  @override
  Widget build(BuildContext context) {
    
    final globalKey = GlobalKey<ScaffoldState>(
      debugLabel: 'home_comic'
    );

    return Scaffold(
      key: globalKey,
      drawer: const DrawerComics(
      ),
      backgroundColor: Colors.white10,
        body: SizedBox.expand(
          child: Stack(
            children: [
              // appBar
              const ComicsPage(),
              //appBar
              AppBarComicsHome(
                globalKey: globalKey,
              ),
            ],
          ),
        )
      );
  }
}


