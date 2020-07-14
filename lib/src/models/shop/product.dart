library product;

import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_chop/src/models/serializers.dart';


part 'product.g.dart';

abstract class Product implements Built<Product, ProductBuilder> {
  factory Product({
    @required String title,
    @required String image,
    @required String description,
    @required double price,
  }) {
    return _$Product((ProductBuilder b) {
      b
        ..title = title
        ..image = image
        ..description = description
        ..price = price;
    });
  }

  factory Product.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  Product._();

  String get title;

  String get image;

  String get description;

  double get price;

  String get id;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<Product> get serializer => _$productSerializer;
}
