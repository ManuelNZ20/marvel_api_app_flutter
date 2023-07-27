import '../entities/comics.dart';

abstract class ComicsDataSource  {

  Future<List<Comics>> getTrendingComicsByPage();

  Future<List<Comics>> getFavoriteComicsByUserId( String userID ) ;


}
