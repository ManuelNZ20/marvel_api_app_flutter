
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:app_comics_marvel1/infrastructure/environment.dart';
import 'package:dio/dio.dart';

class MarvelApi {
  final _dio = Dio();

  Future<List<dynamic>> getMarvelComicsApi() async {
    const ts = "1690397858868";
    final String publicKey = Environment.publicKey;
    final String privateKey = Environment.privateKey;
    final hash = md5.convert(utf8.encode(ts + privateKey + publicKey)).toString();

    final response = await _dio.get(
        Environment.apiUrl,
        queryParameters: {
          'format': 'comic',
          'formatType': 'comic',
          'apikey': publicKey,
          'ts': ts,
          'hash': hash
        });
    
    if (response.statusCode == 200) {
      final List<dynamic> comicsModel = response.data['data']['results'];
      return comicsModel;
    } else {
      throw Exception('Error en la solicitud a la API de Marvel');
    }
  }
}
