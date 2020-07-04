// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'searchResult',
      serializers.serialize(object.searchResult,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Product)])),
      'addedProducts',
      serializers.serialize(object.addedProducts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Product)])),
    ];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(ShopUser)));
    }
    if (object.info != null) {
      result
        ..add('info')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(RegistrationInfo)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShopUser)) as ShopUser);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RegistrationInfo))
              as RegistrationInfo);
          break;
        case 'searchResult':
          result.searchResult.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Product)]))
              as BuiltList<Object>);
          break;
        case 'addedProducts':
          result.addedProducts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Product)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AuthState extends AuthState {
  @override
  final ShopUser user;
  @override
  final RegistrationInfo info;
  @override
  final BuiltList<Product> searchResult;
  @override
  final BuiltList<Product> addedProducts;

  factory _$AuthState([void Function(AuthStateBuilder) updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user, this.info, this.searchResult, this.addedProducts})
      : super._() {
    if (searchResult == null) {
      throw new BuiltValueNullFieldError('AuthState', 'searchResult');
    }
    if (addedProducts == null) {
      throw new BuiltValueNullFieldError('AuthState', 'addedProducts');
    }
  }

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState &&
        user == other.user &&
        info == other.info &&
        searchResult == other.searchResult &&
        addedProducts == other.addedProducts;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, user.hashCode), info.hashCode), searchResult.hashCode),
        addedProducts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('user', user)
          ..add('info', info)
          ..add('searchResult', searchResult)
          ..add('addedProducts', addedProducts))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState _$v;

  ShopUserBuilder _user;
  ShopUserBuilder get user => _$this._user ??= new ShopUserBuilder();
  set user(ShopUserBuilder user) => _$this._user = user;

  RegistrationInfoBuilder _info;
  RegistrationInfoBuilder get info =>
      _$this._info ??= new RegistrationInfoBuilder();
  set info(RegistrationInfoBuilder info) => _$this._info = info;

  ListBuilder<Product> _searchResult;
  ListBuilder<Product> get searchResult =>
      _$this._searchResult ??= new ListBuilder<Product>();
  set searchResult(ListBuilder<Product> searchResult) =>
      _$this._searchResult = searchResult;

  ListBuilder<Product> _addedProducts;
  ListBuilder<Product> get addedProducts =>
      _$this._addedProducts ??= new ListBuilder<Product>();
  set addedProducts(ListBuilder<Product> addedProducts) =>
      _$this._addedProducts = addedProducts;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _info = _$v.info?.toBuilder();
      _searchResult = _$v.searchResult?.toBuilder();
      _addedProducts = _$v.addedProducts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    _$AuthState _$result;
    try {
      _$result = _$v ??
          new _$AuthState._(
              user: _user?.build(),
              info: _info?.build(),
              searchResult: searchResult.build(),
              addedProducts: addedProducts.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'searchResult';
        searchResult.build();
        _$failedField = 'addedProducts';
        addedProducts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
