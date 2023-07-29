import 'package:app_comics_marvel1/domain/datasources/comics_datasource.dart';
import 'package:app_comics_marvel1/domain/entities/comics.dart';
import 'package:app_comics_marvel1/infrastructure/models/comics_model.dart';

import '../../config/helper/marvel_api.dart';

class ApiComicsDataSources extends ComicsDataSource {
  @override
  Future<List<Comics>> getFavoriteComicsByUserId(String userID) {
    // TODO: implement getFavoriteComicsByUserId
    throw UnimplementedError();
  }

  @override
  Future<List<Comics>> getTrendingComicsByPage() async {
    Future.delayed(Duration(seconds: 2));

    final comicsMarvel = MarvelApi();
    final dataComics = await comicsMarvel.getMarvelComicsApi();
    final List<Comics> newDataComics = dataComics.map((e) => ComicsModel.fromJson(e).toComicsEntity()).toList();
    return newDataComics;
  }
}
