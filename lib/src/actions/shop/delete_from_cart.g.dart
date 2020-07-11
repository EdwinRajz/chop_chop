// GENERATED CODE - DO NOT MODIFY BY HAND

part of delete_from_cart;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFromCart extends DeleteFromCart {
  @override
  final Product product;

  factory _$DeleteFromCart([void Function(DeleteFromCartBuilder) updates]) =>
      (new DeleteFromCartBuilder()..update(updates)).build();

  _$DeleteFromCart._({this.product}) : super._() {
    if (product == null) {
      throw new BuiltValueNullFieldError('DeleteFromCart', 'product');
    }
  }

  @override
  DeleteFromCart rebuild(void Function(DeleteFromCartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFromCartBuilder toBuilder() =>
      new DeleteFromCartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFromCart && product == other.product;
  }

  @override
  int get hashCode {
    return $jf($jc(0, product.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteFromCart')
          ..add('product', product))
        .toString();
  }
}

class DeleteFromCartBuilder
    implements Builder<DeleteFromCart, DeleteFromCartBuilder> {
  _$DeleteFromCart _$v;

  ProductBuilder _product;
  ProductBuilder get product => _$this._product ??= new ProductBuilder();
  set product(ProductBuilder product) => _$this._product = product;

  DeleteFromCartBuilder();

  DeleteFromCartBuilder get _$this {
    if (_$v != null) {
      _product = _$v.product?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFromCart other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeleteFromCart;
  }

  @override
  void update(void Function(DeleteFromCartBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteFromCart build() {
    _$DeleteFromCart _$result;
    try {
      _$result = _$v ?? new _$DeleteFromCart._(product: product.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        product.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeleteFromCart', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DeleteFromCartSuccessful extends DeleteFromCartSuccessful {
  @override
  final Product product;

  factory _$DeleteFromCartSuccessful(
          [void Function(DeleteFromCartSuccessfulBuilder) updates]) =>
      (new DeleteFromCartSuccessfulBuilder()..update(updates)).build();

  _$DeleteFromCartSuccessful._({this.product}) : super._() {
    if (product == null) {
      throw new BuiltValueNullFieldError('DeleteFromCartSuccessful', 'product');
    }
  }

  @override
  DeleteFromCartSuccessful rebuild(
          void Function(DeleteFromCartSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFromCartSuccessfulBuilder toBuilder() =>
      new DeleteFromCartSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFromCartSuccessful && product == other.product;
  }

  @override
  int get hashCode {
    return $jf($jc(0, product.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteFromCartSuccessful')
          ..add('product', product))
        .toString();
  }
}

class DeleteFromCartSuccessfulBuilder
    implements
        Builder<DeleteFromCartSuccessful, DeleteFromCartSuccessfulBuilder> {
  _$DeleteFromCartSuccessful _$v;

  ProductBuilder _product;
  ProductBuilder get product => _$this._product ??= new ProductBuilder();
  set product(ProductBuilder product) => _$this._product = product;

  DeleteFromCartSuccessfulBuilder();

  DeleteFromCartSuccessfulBuilder get _$this {
    if (_$v != null) {
      _product = _$v.product?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFromCartSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeleteFromCartSuccessful;
  }

  @override
  void update(void Function(DeleteFromCartSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteFromCartSuccessful build() {
    _$DeleteFromCartSuccessful _$result;
    try {
      _$result =
          _$v ?? new _$DeleteFromCartSuccessful._(product: product.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        product.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeleteFromCartSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DeleteFromCartError extends DeleteFromCartError {
  @override
  final Object error;

  factory _$DeleteFromCartError(
          [void Function(DeleteFromCartErrorBuilder) updates]) =>
      (new DeleteFromCartErrorBuilder()..update(updates)).build();

  _$DeleteFromCartError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('DeleteFromCartError', 'error');
    }
  }

  @override
  DeleteFromCartError rebuild(
          void Function(DeleteFromCartErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFromCartErrorBuilder toBuilder() =>
      new DeleteFromCartErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFromCartError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteFromCartError')
          ..add('error', error))
        .toString();
  }
}

class DeleteFromCartErrorBuilder
    implements Builder<DeleteFromCartError, DeleteFromCartErrorBuilder> {
  _$DeleteFromCartError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  DeleteFromCartErrorBuilder();

  DeleteFromCartErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFromCartError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeleteFromCartError;
  }

  @override
  void update(void Function(DeleteFromCartErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteFromCartError build() {
    final _$result = _$v ?? new _$DeleteFromCartError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
