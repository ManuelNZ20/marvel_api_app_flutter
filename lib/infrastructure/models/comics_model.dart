// To parse this JSON data, do
//
//     final comicsModel = comicsModelFromJson(jsonString);

// ComicsModel comicsModelFromJson(String str) => ComicsModel.fromJson(json.decode(str));
// String comicsModelToJson(ComicsModel data) => json.encode(data.toJson());
// import 'dart:convert';

import 'package:app_comics_marvel1/domain/entities/comics.dart';
import 'package:app_comics_marvel1/infrastructure/models_directions.dart';

class ComicsModel {
  int digitalId;
  String title;
  String description;
  String modified;
  String format;
  int pageCount;
  String resourceUri;
  SeriesModel series;
  List<dynamic> variants;
  List<SeriesModel> collections;
  List<dynamic> collectedIssues;
  List<PriceModel> prices;
  ThumbnailModel thumbnail;
  List<ThumbnailModel> images;
  CharactersModel characters;
  StoriesModel stories;
  CharactersModel events;

  ComicsModel({
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

  factory ComicsModel.fromJson(Map<String, dynamic> json) => ComicsModel(
        digitalId: json["digitalId"] ?? 0,
        title: json["title"] ?? '',
        description: json["description"] ?? '',
        modified: json["modified"] ?? '',
        format: json["format"] ?? '',
        pageCount: json["pageCount"] ?? 0,
        resourceUri: json["resourceURI"]??'',
        series: SeriesModel.fromJson(json["series"]),
        variants: List<dynamic>.from(json["variants"].map((x) => x)),
        collections: List<SeriesModel>.from(
            json["collections"].map((x) => SeriesModel.fromJson(x))),
        collectedIssues:
            List<dynamic>.from(json["collectedIssues"].map((x) => x)),
        prices: List<PriceModel>.from(
            json["prices"].map((x) => PriceModel.fromJson(x))),
        thumbnail: ThumbnailModel.fromJson(json["thumbnail"]),
        images: List<ThumbnailModel>.from(
            json["images"].map((x) => ThumbnailModel.fromJson(x))),
        characters: CharactersModel.fromJson(json["characters"]),
        stories: StoriesModel.fromJson(json["stories"]),
        events: CharactersModel.fromJson(json["events"]),
      );

  Map<String, dynamic> toJson() => {
        "digitalId": digitalId,
        "title": title,
        "description": description,
        "modified": modified,
        "format": format,
        "pageCount": pageCount,
        "resourceURI": resourceUri,
        "series": series.toJson(),
        "variants": List<dynamic>.from(variants.map((x) => x)),
        "collections": List<dynamic>.from(collections.map((x) => x.toJson())),
        "collectedIssues": List<dynamic>.from(collectedIssues.map((x) => x)),
        "prices": List<dynamic>.from(prices.map((x) => x.toJson())),
        "thumbnail": thumbnail.toJson(),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "characters": characters.toJson(),
        "stories": stories.toJson(),
        "events": events.toJson(),
      };

  Comics toComicsEntity() => Comics(
      digitalId: digitalId,
      title: title,
      description: description,
      modified: modified,
      format: format,
      pageCount: pageCount,
      resourceUri: resourceUri,
      series: series.toSeriesEntity(),
      variants: variants,
      collections: List.generate(
          collections.length, (index) => collections[index].toSeriesEntity()),
      collectedIssues: collectedIssues,
      prices: List.generate(
          prices.length, (index) => prices[index].toPriceEntity()),
      thumbnail: thumbnail.toThumbnailEntity(),
      images: List.generate(
          images.length, (index) => images[index].toThumbnailEntity()),
      characters: characters.toCharactersEntity(),
      stories: stories.toStoriesEntity(),
      events: events.toCharactersEntity());
}
