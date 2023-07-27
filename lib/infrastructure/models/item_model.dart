
import 'package:app_comics_marvel1/domain/entities/item.dart';

class ItemModel {
    String resourceUri;
    String name;
    String type;

    ItemModel({
        required this.resourceUri,
        required this.name,
        required this.type,
    });

    factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        resourceUri: json["resourceURI"],
        name: json["name"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "resourceURI": resourceUri,
        "name": name,
        "type": type,
    };
    Item toItemEntity() => Item(resourceUri: resourceUri, name: name, type: type);
}