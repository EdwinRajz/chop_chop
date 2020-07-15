library discount;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_chop/src/models/serializers.dart';

part 'discount.g.dart';

abstract class Discount implements Built<Discount, DiscountBuilder> {
  factory Discount([void Function(DiscountBuilder b) updates]) = _$Discount;

  factory Discount.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  Discount._();

  String get id;

  String get productId;

  double get discount;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<Discount> get serializer => _$discountSerializer;
}
