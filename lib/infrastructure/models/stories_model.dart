import 'package:app_comics_marvel1/domain/entities_direction.dart';
import 'package:app_comics_marvel1/infrastructure/models_directions.dart';

class StoriesModel {
    int available;
    String collectionUri;
    List<ItemModel> items;
    int returned;

    StoriesModel({
        required this.available,
        required this.collectionUri,
        required this.items,
        required this.returned,
    });

    factory StoriesModel.fromJson(Map<String, dynamic> json) => StoriesModel(
        available: json["available"],
        collectionUri: json["collectionURI"],
        items: List<ItemModel>.from(json["items"].map((x) => ItemModel.fromJson(x))),
        returned: json["returned"],
    );

    Map<String, dynamic> toJson() => {
        "available": available,
        "collectionURI": collectionUri,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "returned": returned,
    };

  Stories toStoriesEntity() => Stories(available: available, collectionUri: collectionUri, items: List.generate(items.length, (index) => items[index].toItemEntity()), returned: returned);

}
