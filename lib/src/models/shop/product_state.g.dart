// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductState> _$productStateSerializer =
    new _$ProductStateSerializer();

class _$ProductStateSerializer implements StructuredSerializer<ProductState> {
  @override
  final Iterable<Type> types = const [ProductState, _$ProductState];
  @override
  final String wireName = 'ProductState';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'products',
      serializers.serialize(object.products,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Product)])),
      'discounts',
      serializers.serialize(object.discounts,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(Discount)])),
    ];

    return result;
  }

  @override
  ProductState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'products':
          result.products.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Product)]))
              as BuiltList<Object>);
          break;
        case 'discounts':
          result.discounts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Discount)])));
          break;
      }
    }

    return result.build();
  }
}

class _$ProductState extends ProductState {
  @override
  final BuiltList<Product> products;
  @override
  final BuiltMap<String, Discount> discounts;

  factory _$ProductState([void Function(ProductStateBuilder) updates]) =>
      (new ProductStateBuilder()..update(updates)).build();

  _$ProductState._({this.products, this.discounts}) : super._() {
    if (products == null) {
      throw new BuiltValueNullFieldError('ProductState', 'products');
    }
    if (discounts == null) {
      throw new BuiltValueNullFieldError('ProductState', 'discounts');
    }
  }

  @override
  ProductState rebuild(void Function(ProductStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductStateBuilder toBuilder() => new ProductStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductState &&
        products == other.products &&
        discounts == other.discounts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, products.hashCode), discounts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductState')
          ..add('products', products)
          ..add('discounts', discounts))
        .toString();
  }
}

class ProductStateBuilder
    implements Builder<ProductState, ProductStateBuilder> {
  _$ProductState _$v;

  ListBuilder<Product> _products;
  ListBuilder<Product> get products =>
      _$this._products ??= new ListBuilder<Product>();
  set products(ListBuilder<Product> products) => _$this._products = products;

  MapBuilder<String, Discount> _discounts;
  MapBuilder<String, Discount> get discounts =>
      _$this._discounts ??= new MapBuilder<String, Discount>();
  set discounts(MapBuilder<String, Discount> discounts) =>
      _$this._discounts = discounts;

  ProductStateBuilder();

  ProductStateBuilder get _$this {
    if (_$v != null) {
      _products = _$v.products?.toBuilder();
      _discounts = _$v.discounts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductState;
  }

  @override
  void update(void Function(ProductStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductState build() {
    _$ProductState _$result;
    try {
      _$result = _$v ??
          new _$ProductState._(
              products: products.build(), discounts: discounts.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
        _$failedField = 'discounts';
        discounts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
