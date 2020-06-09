library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';


part 'serializers.g.dart';

@SerializersFor(<Type>[
  // ShopState,
  ShopUser,
  // AuthState,

])
Serializers serializers = (_$serializers.toBuilder() //
  ..addPlugin(StandardJsonPlugin()))
    .build();
