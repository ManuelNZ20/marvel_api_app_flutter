import 'package:app_comics_marvel1/presentation/widgets/shared/buttons_comics.dart';
import 'package:app_comics_marvel1/presentation/widgets/shared/card_image_comics.dart';
import 'package:flutter/material.dart';

import '../../../config/helper/app_text_style.dart';
import '../../../domain/entities/comics.dart';
class CardDetailsComics extends StatelessWidget {
  const CardDetailsComics({
    super.key,
    required this.comics,
  });

  final Comics comics;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CardComics(comics: comics),
        _DetailsComics(comics: comics)
      ],
    );
  }
}

class _DetailsComics extends StatelessWidget {
  const _DetailsComics({
    required this.comics,
  });

  final Comics comics;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final txtStyleComics = TextStyleDetailComics();
    return SizedBox(
      width: size.width * .45,
      height: size.height * .3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text(comics.title,
          overflow: TextOverflow.ellipsis,
          style: txtStyleComics.textStyleDetails(Colors.black, 18),
          )),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[100]
            ),
            padding: const EdgeInsets.all(10),
            height: size.height * .2,
            width: size.width*1,
            child: Text(
              comics.description == '#N/A'||comics.description.isEmpty
                  ? 'Sin Descripción'
                  : comics.description,
              overflow: TextOverflow.clip,
              style: txtStyleComics.textStyleDetails(Colors.black,16),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('\$ ${comics.prices[0].price}',style: txtStyleComics.textStyleDetails(Colors.black, 16),),
              ButtonComics(
                iconData: Icons.monetization_on_outlined,
                label: 'Adquirir',
                onPressed: (){},
                ),
            ],
          )
        ],
      ),
    );
  }
}
