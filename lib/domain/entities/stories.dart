import 'package:app_comics_marvel1/domain/entities/item.dart';

class Stories {
    int available;
    String collectionUri;
    List<Item> items;
    int returned;

    Stories({
        required this.available,
        required this.collectionUri,
        required this.items,
        required this.returned,
    });

}