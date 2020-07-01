// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_to_cart;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddToCart extends AddToCart {
  @override
  final Product product;

  factory _$AddToCart([void Function(AddToCartBuilder) updates]) =>
      (new AddToCartBuilder()..update(updates)).build();

  _$AddToCart._({this.product}) : super._() {
    if (product == null) {
      throw new BuiltValueNullFieldError('AddToCart', 'product');
    }
  }

  @override
  AddToCart rebuild(void Function(AddToCartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToCartBuilder toBuilder() => new AddToCartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToCart && product == other.product;
  }

  @override
  int get hashCode {
    return $jf($jc(0, product.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToCart')..add('product', product))
        .toString();
  }
}

class AddToCartBuilder implements Builder<AddToCart, AddToCartBuilder> {
  _$AddToCart _$v;

  ProductBuilder _product;
  ProductBuilder get product => _$this._product ??= new ProductBuilder();
  set product(ProductBuilder product) => _$this._product = product;

  AddToCartBuilder();

  AddToCartBuilder get _$this {
    if (_$v != null) {
      _product = _$v.product?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToCart other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddToCart;
  }

  @override
  void update(void Function(AddToCartBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToCart build() {
    _$AddToCart _$result;
    try {
      _$result = _$v ?? new _$AddToCart._(product: product.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        product.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddToCart', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddToCartSuccessful extends AddToCartSuccessful {
  @override
  final Product product;

  factory _$AddToCartSuccessful(
          [void Function(AddToCartSuccessfulBuilder) updates]) =>
      (new AddToCartSuccessfulBuilder()..update(updates)).build();

  _$AddToCartSuccessful._({this.product}) : super._() {
    if (product == null) {
      throw new BuiltValueNullFieldError('AddToCartSuccessful', 'product');
    }
  }

  @override
  AddToCartSuccessful rebuild(
          void Function(AddToCartSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToCartSuccessfulBuilder toBuilder() =>
      new AddToCartSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToCartSuccessful && product == other.product;
  }

  @override
  int get hashCode {
    return $jf($jc(0, product.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToCartSuccessful')
          ..add('product', product))
        .toString();
  }
}

class AddToCartSuccessfulBuilder
    implements Builder<AddToCartSuccessful, AddToCartSuccessfulBuilder> {
  _$AddToCartSuccessful _$v;

  ProductBuilder _product;
  ProductBuilder get product => _$this._product ??= new ProductBuilder();
  set product(ProductBuilder product) => _$this._product = product;

  AddToCartSuccessfulBuilder();

  AddToCartSuccessfulBuilder get _$this {
    if (_$v != null) {
      _product = _$v.product?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToCartSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddToCartSuccessful;
  }

  @override
  void update(void Function(AddToCartSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToCartSuccessful build() {
    _$AddToCartSuccessful _$result;
    try {
      _$result = _$v ?? new _$AddToCartSuccessful._(product: product.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        product.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddToCartSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddToCartError extends AddToCartError {
  @override
  final Object error;

  factory _$AddToCartError([void Function(AddToCartErrorBuilder) updates]) =>
      (new AddToCartErrorBuilder()..update(updates)).build();

  _$AddToCartError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('AddToCartError', 'error');
    }
  }

  @override
  AddToCartError rebuild(void Function(AddToCartErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToCartErrorBuilder toBuilder() =>
      new AddToCartErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToCartError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToCartError')..add('error', error))
        .toString();
  }
}

class AddToCartErrorBuilder
    implements Builder<AddToCartError, AddToCartErrorBuilder> {
  _$AddToCartError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  AddToCartErrorBuilder();

  AddToCartErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToCartError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddToCartError;
  }

  @override
  void update(void Function(AddToCartErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToCartError build() {
    final _$result = _$v ?? new _$AddToCartError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
