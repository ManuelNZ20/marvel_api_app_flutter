import 'package:app_comics_marvel1/presentation/providers/comics_provider.dart';
import 'package:app_comics_marvel1/presentation/widgets/shared/buttons_appbar.dart';
import 'package:app_comics_marvel1/presentation/widgets/shared/buttons_comics.dart';
import 'package:app_comics_marvel1/presentation/widgets/shared/card_details_comics.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerComics extends StatelessWidget {
  const DrawerComics({super.key});

  @override
  Widget build(BuildContext context) {
    final comicsProvider = context.watch<ComicsProvider>();
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Drawer(
        width: size.width * .95,
        child: NavigationDrawer(children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.black,
                  child: Image.asset('assets/images/logoMarvel.png'))),
          Column(
            children: [
              SizedBox(
                  width: size.width,
                  height: size.height * .68,
                  child: ListView.builder(
                    itemCount: comicsProvider.data.length,
                    itemBuilder: (context, index) {
                      final comics = comicsProvider.data[index];
                      return Container(
                        color: Colors.grey[100],
                        padding:
                            EdgeInsets.symmetric(vertical: size.height * .005),
                        child: Column(
                          children: [
                            CardDetailsComics(comics: comics),
                            const Divider()
                          ],
                        ),
                      );
                    },
                  )),
              ButtonComics(
                iconData: Icons.exit_to_app_rounded,
                label: 'Close drawer',
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ]),
      ),
    );
  }
}
