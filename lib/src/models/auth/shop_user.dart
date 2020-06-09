library shop_user;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_chop/src/models/serializers.dart';

part 'shop_user.g.dart';

abstract class ShopUser implements Built<ShopUser, ShopUserBuilder> {
  factory ShopUser([void Function(ShopUserBuilder b) updates]) = _$ShopUser;

  factory ShopUser.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  ShopUser._();

  String get uid;

  @nullable
  String get email;

  @nullable
  String get phone;

  @nullable
  String get verificationId;

  @nullable
  String get smsCode;

  @nullable
  String get password;

  @nullable
  DateTime get birthDate;

  bool get savePassword;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<ShopUser> get serializer => _$shopUserSerializer;
}
