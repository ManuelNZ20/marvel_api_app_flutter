import 'package:app_comics_marvel1/config/theme/app_theme.dart';
import 'package:app_comics_marvel1/infrastructure/datasources/comics_datasource_impl.dart';
import 'package:app_comics_marvel1/infrastructure/repositories/comics_repositories_impl.dart';
import 'package:app_comics_marvel1/presentation/providers/comics_provider.dart';
import 'package:app_comics_marvel1/presentation/providers/series_provider.dart';
import 'package:app_comics_marvel1/presentation/screens/home/comic_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

Future<void>   main() async{
  await dotenv.load(
  );
  runApp(const MainApp());

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {

    final comicsRepository = ComicsRepositoriesImpl(comicsDataSource: ComicsDataSources());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ComicsProvider(
          comicsRepository: comicsRepository
        )..getComicsMarvel()),
        ChangeNotifierProvider(create: (_) => SeriesProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme().themeData(),
          home: const HomeScreenComic()),
    );
  }
}
