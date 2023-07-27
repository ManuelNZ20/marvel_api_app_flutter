import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get publicKey {
    return dotenv.env['PUBLIC_KEY']??'PUBLIC_KEY no exists';
  }

  static String get privateKey {
    return dotenv.env['PRIVATE_KEY']??'PRIVATE_KEY no exists';
  }

  static String get apiUrl {
    return dotenv.env['API_URL']??'API_URL not found';
  }
}