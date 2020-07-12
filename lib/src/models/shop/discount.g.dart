// GENERATED CODE - DO NOT MODIFY BY HAND

part of discount;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Discount> _$discountSerializer = new _$DiscountSerializer();

class _$DiscountSerializer implements StructuredSerializer<Discount> {
  @override
  final Iterable<Type> types = const [Discount, _$Discount];
  @override
  final String wireName = 'Discount';

  @override
  Iterable<Object> serialize(Serializers serializers, Discount object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'productId',
      serializers.serialize(object.productId,
          specifiedType: const FullType(String)),
      'discount',
      serializers.serialize(object.discount,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Discount deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiscountBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Discount extends Discount {
  @override
  final String id;
  @override
  final String productId;
  @override
  final double discount;

  factory _$Discount([void Function(DiscountBuilder) updates]) =>
      (new DiscountBuilder()..update(updates)).build();

  _$Discount._({this.id, this.productId, this.discount}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Discount', 'id');
    }
    if (productId == null) {
      throw new BuiltValueNullFieldError('Discount', 'productId');
    }
    if (discount == null) {
      throw new BuiltValueNullFieldError('Discount', 'discount');
    }
  }

  @override
  Discount rebuild(void Function(DiscountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscountBuilder toBuilder() => new DiscountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Discount &&
        id == other.id &&
        productId == other.productId &&
        discount == other.discount;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), productId.hashCode), discount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Discount')
          ..add('id', id)
          ..add('productId', productId)
          ..add('discount', discount))
        .toString();
  }
}

class DiscountBuilder implements Builder<Discount, DiscountBuilder> {
  _$Discount _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _productId;
  String get productId => _$this._productId;
  set productId(String productId) => _$this._productId = productId;

  double _discount;
  double get discount => _$this._discount;
  set discount(double discount) => _$this._discount = discount;

  DiscountBuilder();

  DiscountBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _productId = _$v.productId;
      _discount = _$v.discount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Discount other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Discount;
  }

  @override
  void update(void Function(DiscountBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Discount build() {
    final _$result = _$v ??
        new _$Discount._(id: id, productId: productId, discount: discount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
