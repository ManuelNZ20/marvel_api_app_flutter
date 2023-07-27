import 'package:flutter/material.dart';

class ComicsImagePage extends StatelessWidget {
  const ComicsImagePage(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.index});

  final String imageUrl;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
          height: size.height,
        ),
        if (index.isOdd)
          Positioned(
            top: size.height * .15,
            right: size.height *.01,
            child: _TextPositioned(size: size, title: title),
          ),
        if(!index.isOdd)
          Positioned(
            top: size.height * .15,
            left: size.height *.01,
            child: _TextPositioned(size: size, title: title),
          ),
          
      ],
    );
  }
}

class _TextPositioned extends StatelessWidget {
  const _TextPositioned({
    required this.size,
    required this.title,
  });

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * .7,
      child: Column(
        children: [
          Text(
            title,
            overflow: TextOverflow.clip,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}


