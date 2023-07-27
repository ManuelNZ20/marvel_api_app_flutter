import 'package:app_comics_marvel1/domain/entities/series.dart';

class SeriesModel {
    String resourceUri;
    String name;

    SeriesModel({
        required this.resourceUri,
        required this.name,
    });

    factory SeriesModel.fromJson(Map<String, dynamic> json) => SeriesModel(
        resourceUri: json["resourceURI"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "resourceURI": resourceUri,
        "name": name,
    };

    Series toSeriesEntity() => Series(resourceUri: resourceUri, name: name);

    
}