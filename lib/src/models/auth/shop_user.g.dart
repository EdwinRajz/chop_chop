// GENERATED CODE - DO NOT MODIFY BY HAND

part of shop_user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShopUser> _$shopUserSerializer = new _$ShopUserSerializer();

class _$ShopUserSerializer implements StructuredSerializer<ShopUser> {
  @override
  final Iterable<Type> types = const [ShopUser, _$ShopUser];
  @override
  final String wireName = 'ShopUser';

  @override
  Iterable<Object> serialize(Serializers serializers, ShopUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
    ];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.verificationId != null) {
      result
        ..add('verificationId')
        ..add(serializers.serialize(object.verificationId,
            specifiedType: const FullType(String)));
    }
    if (object.smsCode != null) {
      result
        ..add('smsCode')
        ..add(serializers.serialize(object.smsCode,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.birthDate != null) {
      result
        ..add('birthDate')
        ..add(serializers.serialize(object.birthDate,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  ShopUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShopUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verificationId':
          result.verificationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'smsCode':
          result.smsCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthDate':
          result.birthDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$ShopUser extends ShopUser {
  @override
  final String uid;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String verificationId;
  @override
  final String smsCode;
  @override
  final String password;
  @override
  final String address;
  @override
  final DateTime birthDate;

  factory _$ShopUser([void Function(ShopUserBuilder) updates]) =>
      (new ShopUserBuilder()..update(updates)).build();

  _$ShopUser._(
      {this.uid,
      this.email,
      this.phone,
      this.verificationId,
      this.smsCode,
      this.password,
      this.address,
      this.birthDate})
      : super._() {
    if (uid == null) {
      throw new BuiltValueNullFieldError('ShopUser', 'uid');
    }
  }

  @override
  ShopUser rebuild(void Function(ShopUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShopUserBuilder toBuilder() => new ShopUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShopUser &&
        uid == other.uid &&
        email == other.email &&
        phone == other.phone &&
        verificationId == other.verificationId &&
        smsCode == other.smsCode &&
        password == other.password &&
        address == other.address &&
        birthDate == other.birthDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, uid.hashCode), email.hashCode),
                            phone.hashCode),
                        verificationId.hashCode),
                    smsCode.hashCode),
                password.hashCode),
            address.hashCode),
        birthDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShopUser')
          ..add('uid', uid)
          ..add('email', email)
          ..add('phone', phone)
          ..add('verificationId', verificationId)
          ..add('smsCode', smsCode)
          ..add('password', password)
          ..add('address', address)
          ..add('birthDate', birthDate))
        .toString();
  }
}

class ShopUserBuilder implements Builder<ShopUser, ShopUserBuilder> {
  _$ShopUser _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _verificationId;
  String get verificationId => _$this._verificationId;
  set verificationId(String verificationId) =>
      _$this._verificationId = verificationId;

  String _smsCode;
  String get smsCode => _$this._smsCode;
  set smsCode(String smsCode) => _$this._smsCode = smsCode;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  DateTime _birthDate;
  DateTime get birthDate => _$this._birthDate;
  set birthDate(DateTime birthDate) => _$this._birthDate = birthDate;

  ShopUserBuilder();

  ShopUserBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _email = _$v.email;
      _phone = _$v.phone;
      _verificationId = _$v.verificationId;
      _smsCode = _$v.smsCode;
      _password = _$v.password;
      _address = _$v.address;
      _birthDate = _$v.birthDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShopUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ShopUser;
  }

  @override
  void update(void Function(ShopUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShopUser build() {
    final _$result = _$v ??
        new _$ShopUser._(
            uid: uid,
            email: email,
            phone: phone,
            verificationId: verificationId,
            smsCode: smsCode,
            password: password,
            address: address,
            birthDate: birthDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
