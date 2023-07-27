
import 'package:app_comics_marvel1/domain/datasources/comics_datasource.dart';
import 'package:app_comics_marvel1/domain/entities/comics.dart';
import 'package:app_comics_marvel1/domain/repositories/comics_repositories.dart';

class ComicsRepositoriesImpl extends ComicsRepository {

  final ComicsDataSource comicsDataSource;

  ComicsRepositoriesImpl({required this.comicsDataSource});

  @override
  Future<List<Comics>> getFavoriteComicsByUserId(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<Comics>> getTrendingComicsByPage() {
    // TODO: implement getTrendingComicsByPage
    return comicsDataSource.getTrendingComicsByPage();
  }

}


