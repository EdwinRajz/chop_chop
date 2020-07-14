library registration_info;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_chop/src/models/serializers.dart';

part 'registration_info.g.dart';

abstract class RegistrationInfo implements Built<RegistrationInfo, RegistrationInfoBuilder> {
  factory RegistrationInfo() {
    return _$RegistrationInfo((RegistrationInfoBuilder b) {});
  }

  RegistrationInfo._();

  factory RegistrationInfo.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  @nullable
  String get email;

  @nullable
  String get phone;

  @nullable
  String get password;

  @nullable
  DateTime get birthDate;

  @nullable
  String get name;

  @nullable
  String get address;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<RegistrationInfo> get serializer => _$registrationInfoSerializer;
}
