library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';
import 'package:shop_chop/src/models/shop/discount.dart';
import 'package:shop_chop/src/models/shop/product.dart';
import 'package:shop_chop/src/models/shop_state.dart';
import 'package:shop_chop/src/models/shop/product_state.dart';

import 'auth/auth_state.dart';
import 'auth/registration_info.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  ShopState,
  ShopUser,
  AuthState,
  RegistrationInfo,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
