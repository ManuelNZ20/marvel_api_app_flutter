
import 'package:app_comics_marvel1/domain/entities_direction.dart';

class Comics {
    int digitalId;
    String title;
    String description;
    String modified;
    String format;
    int pageCount;
    String resourceUri;
    Series series;
    List<dynamic> variants;
    List<Series> collections;
    List<dynamic> collectedIssues;
    List<Price> prices;
    Thumbnail thumbnail;
    List<Thumbnail> images;
    CharactersComics characters;
    Stories stories;
    CharactersComics events;

    Comics({
        required this.digitalId,
        required this.title,
        required this.description,
        required this.modified,
        required this.format,
        required this.pageCount,
        required this.resourceUri,
        required this.series,
        required this.variants,
        required this.collections,
        required this.collectedIssues,
        required this.prices,
        required this.thumbnail,
        required this.images,
        required this.characters,
        required this.stories,
        required this.events,
    });
}