import 'package:app_comics_marvel1/domain/entities/series.dart';

class CharactersComics {
    int available;
    String collectionUri;
    List<Series> items;
    int returned;

    CharactersComics({
        required this.available,
        required this.collectionUri,
        required this.items,
        required this.returned,
    });
}