import 'package:app_comics_marvel1/domain/repositories/comics_repositories.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/comics.dart';

class ComicsProvider extends ChangeNotifier {
  final List<Comics> data = [];
  final ComicsRepository comicsRepository;
  bool initialLoadingImage = true;
  ComicsProvider({required this.comicsRepository});

  Future<void> getComicsMarvel() async {
    final newComics = await comicsRepository.getTrendingComicsByPage();
    data.addAll(newComics);
    initialLoadingImage = false;
    notifyListeners();
  }
}
