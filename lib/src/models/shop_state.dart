library app_state;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_chop/src/models/serializers.dart';
import 'package:shop_chop/src/models/shop/product_state.dart';

import 'auth/auth_state.dart';

part 'shop_state.g.dart';

abstract class ShopState implements Built<ShopState, ShopStateBuilder> {
  factory ShopState([void Function(ShopStateBuilder b) updates]) = _$ShopState;

  factory ShopState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  ShopState._();

  AuthState get auth;

  ProductState get product;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<ShopState> get serializer => _$shopStateSerializer;
}
