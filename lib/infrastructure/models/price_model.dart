import 'package:app_comics_marvel1/domain/entities_direction.dart';

class PriceModel {
    String type;
    double price;

    PriceModel({
        required this.type,
        required this.price,
    });

    factory PriceModel.fromJson(Map<String, dynamic> json) => PriceModel(
        type: json["type"],
        price: json["price"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "price": price,
    };

    Price toPriceEntity() => Price(type: type, price: price);
}