import 'package:app_comics_marvel1/domain/entities_direction.dart';
import 'package:app_comics_marvel1/infrastructure/models/series_model.dart';

class CharactersModel {
    int available;
    String collectionUri;
    List<SeriesModel> items;
    int returned;

    CharactersModel({
        required this.available,
        required this.collectionUri,
        required this.items,
        required this.returned,
    });

    factory CharactersModel.fromJson(Map<String, dynamic> json) => CharactersModel(
        available: json["available"],
        collectionUri: json["collectionURI"],
        items: List<SeriesModel>.from(json["items"].map((x) => SeriesModel.fromJson(x))),
        returned: json["returned"],
    );

    Map<String, dynamic> toJson() => {
        "available": available,
        "collectionURI": collectionUri,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "returned": returned,
    };

    CharactersComics toCharactersEntity() => CharactersComics(available: available, collectionUri: collectionUri, items: List.generate(items.length, (index) => items[index].toSeriesEntity()), returned: returned);
}

