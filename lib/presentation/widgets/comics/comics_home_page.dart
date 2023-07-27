import 'package:app_comics_marvel1/presentation/providers/comics_provider.dart';
import 'package:app_comics_marvel1/presentation/widgets/comics/comic_image_page.dart';
import 'package:app_comics_marvel1/presentation/widgets/shared/draggable_comics.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ComicsPage extends StatelessWidget {
  const ComicsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final comicsProvider = Provider.of<ComicsProvider>(context);
    return comicsProvider.initialLoadingImage
        ? Center(
          child: const CircularProgressIndicator(
            color: Colors.white,
          ),
        )
        : PageView.builder(
            physics: const PageScrollPhysics(),
            itemCount: comicsProvider.data.length,
            itemBuilder: (context, index) {
              final comic = comicsProvider.data[index];
              return Stack(
                children: [
                  ComicsImagePage(
                    imageUrl:
                        '${comic.thumbnail.path}.${comic.thumbnail.extensionThumbnail}',
                    title: comic.title,
                    index: index,
                  ),
                  Align(
                    child: DraggableComicsSheet(comics: comic),
                  )
                ],
              );
            },
          );
  }
}
