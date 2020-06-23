// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShopState> _$shopStateSerializer = new _$ShopStateSerializer();

class _$ShopStateSerializer implements StructuredSerializer<ShopState> {
  @override
  final Iterable<Type> types = const [ShopState, _$ShopState];
  @override
  final String wireName = 'ShopState';

  @override
  Iterable<Object> serialize(Serializers serializers, ShopState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'auth',
      serializers.serialize(object.auth,
          specifiedType: const FullType(AuthState)),
      'product',
      serializers.serialize(object.product,
          specifiedType: const FullType(ProductState)),
    ];

    return result;
  }

  @override
  ShopState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShopStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'auth':
          result.auth.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState)) as AuthState);
          break;
        case 'product':
          result.product.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProductState)) as ProductState);
          break;
      }
    }

    return result.build();
  }
}

class _$ShopState extends ShopState {
  @override
  final AuthState auth;
  @override
  final ProductState product;

  factory _$ShopState([void Function(ShopStateBuilder) updates]) =>
      (new ShopStateBuilder()..update(updates)).build();

  _$ShopState._({this.auth, this.product}) : super._() {
    if (auth == null) {
      throw new BuiltValueNullFieldError('ShopState', 'auth');
    }
    if (product == null) {
      throw new BuiltValueNullFieldError('ShopState', 'product');
    }
  }

  @override
  ShopState rebuild(void Function(ShopStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShopStateBuilder toBuilder() => new ShopStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShopState && auth == other.auth && product == other.product;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, auth.hashCode), product.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShopState')
          ..add('auth', auth)
          ..add('product', product))
        .toString();
  }
}

class ShopStateBuilder implements Builder<ShopState, ShopStateBuilder> {
  _$ShopState _$v;

  AuthStateBuilder _auth;
  AuthStateBuilder get auth => _$this._auth ??= new AuthStateBuilder();
  set auth(AuthStateBuilder auth) => _$this._auth = auth;

  ProductStateBuilder _product;
  ProductStateBuilder get product =>
      _$this._product ??= new ProductStateBuilder();
  set product(ProductStateBuilder product) => _$this._product = product;

  ShopStateBuilder();

  ShopStateBuilder get _$this {
    if (_$v != null) {
      _auth = _$v.auth?.toBuilder();
      _product = _$v.product?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShopState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ShopState;
  }

  @override
  void update(void Function(ShopStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShopState build() {
    _$ShopState _$result;
    try {
      _$result = _$v ??
          new _$ShopState._(auth: auth.build(), product: product.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'auth';
        auth.build();
        _$failedField = 'product';
        product.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ShopState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
