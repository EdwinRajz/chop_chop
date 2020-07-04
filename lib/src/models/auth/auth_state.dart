library auth_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_chop/src/models/auth/registration_info.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';
import 'package:shop_chop/src/models/serializers.dart';
import 'package:shop_chop/src/models/shop/product.dart';

part 'auth_state.g.dart';

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState([void Function(AuthStateBuilder b) updates]) = _$AuthState;

  factory AuthState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  AuthState._();

  @nullable
  ShopUser get user;

  @nullable
  RegistrationInfo get info;

  BuiltList<Product> get searchResult;

  BuiltList<Product> get addedProducts;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
