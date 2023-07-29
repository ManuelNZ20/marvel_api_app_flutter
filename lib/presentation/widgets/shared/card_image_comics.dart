import 'package:flutter/material.dart';
import '../../../domain/entities/comics.dart';

class CardComics extends StatelessWidget {
  const CardComics({
    super.key, 
    required this.comics,
  });

  final Comics comics;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
      return SizedBox(
      width: size.width * .43,
      height: size.height * .3,
      child: Card(
        elevation: 5,
        clipBehavior: Clip.hardEdge,
        child: Image.network(
          '${comics.thumbnail.path}.${comics.thumbnail.extensionThumbnail}',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
