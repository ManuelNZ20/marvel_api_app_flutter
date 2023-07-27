import 'package:app_comics_marvel1/domain/entities_direction.dart';

class ThumbnailModel {
    String path;
    String extensionThumbnail;

    ThumbnailModel({
        required this.path,
        required this.extensionThumbnail,
    });

    factory ThumbnailModel.fromJson(Map<String, dynamic> json) => ThumbnailModel(
        path: json["path"],
        extensionThumbnail: json["extension"],
    );

    Map<String, dynamic> toJson() => {
        "path": path,
        "extension": extensionThumbnail,
    };

    Thumbnail toThumbnailEntity() => Thumbnail(path: path, extensionThumbnail: extensionThumbnail);
}