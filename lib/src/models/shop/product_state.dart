library product_state;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_chop/src/models/serializers.dart';
import 'package:shop_chop/src/models/shop/product.dart';

part 'product_state.g.dart';
abstract class ProductState implements Built<ProductState, ProductStateBuilder> {
  factory ProductState([void Function(ProductStateBuilder b) updates]) = _$ProductState;
  factory ProductState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);
  ProductState._();

  BuiltList<Product> get products;



  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);
  static Serializer<ProductState> get serializer => _$productStateSerializer;
}