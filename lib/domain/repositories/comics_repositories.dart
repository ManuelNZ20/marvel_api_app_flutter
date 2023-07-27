
import '../entities/comics.dart';

abstract class ComicsRepository {

  Future<List<Comics>> getTrendingComicsByPage() ;
  Future<List<Comics>> getFavoriteComicsByUserId( String userID) ;

}
