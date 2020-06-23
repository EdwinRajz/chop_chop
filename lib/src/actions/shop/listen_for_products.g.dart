// GENERATED CODE - DO NOT MODIFY BY HAND

part of listen_for_products;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListenForProducts extends ListenForProducts {
  factory _$ListenForProducts(
          [void Function(ListenForProductsBuilder) updates]) =>
      (new ListenForProductsBuilder()..update(updates)).build();

  _$ListenForProducts._() : super._();

  @override
  ListenForProducts rebuild(void Function(ListenForProductsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForProductsBuilder toBuilder() =>
      new ListenForProductsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForProducts;
  }

  @override
  int get hashCode {
    return 419557273;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ListenForProducts').toString();
  }
}

class ListenForProductsBuilder
    implements Builder<ListenForProducts, ListenForProductsBuilder> {
  _$ListenForProducts _$v;

  ListenForProductsBuilder();

  @override
  void replace(ListenForProducts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForProducts;
  }

  @override
  void update(void Function(ListenForProductsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForProducts build() {
    final _$result = _$v ?? new _$ListenForProducts._();
    replace(_$result);
    return _$result;
  }
}

class _$ListenForProductsSuccessful extends ListenForProductsSuccessful {
  factory _$ListenForProductsSuccessful(
          [void Function(ListenForProductsSuccessfulBuilder) updates]) =>
      (new ListenForProductsSuccessfulBuilder()..update(updates)).build();

  _$ListenForProductsSuccessful._() : super._();

  @override
  ListenForProductsSuccessful rebuild(
          void Function(ListenForProductsSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForProductsSuccessfulBuilder toBuilder() =>
      new ListenForProductsSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForProductsSuccessful;
  }

  @override
  int get hashCode {
    return 301716211;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ListenForProductsSuccessful')
        .toString();
  }
}

class ListenForProductsSuccessfulBuilder
    implements
        Builder<ListenForProductsSuccessful,
            ListenForProductsSuccessfulBuilder> {
  _$ListenForProductsSuccessful _$v;

  ListenForProductsSuccessfulBuilder();

  @override
  void replace(ListenForProductsSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForProductsSuccessful;
  }

  @override
  void update(void Function(ListenForProductsSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForProductsSuccessful build() {
    final _$result = _$v ?? new _$ListenForProductsSuccessful._();
    replace(_$result);
    return _$result;
  }
}

class _$OnProductsEvent extends OnProductsEvent {
  @override
  final BuiltList<Product> products;

  factory _$OnProductsEvent([void Function(OnProductsEventBuilder) updates]) =>
      (new OnProductsEventBuilder()..update(updates)).build();

  _$OnProductsEvent._({this.products}) : super._() {
    if (products == null) {
      throw new BuiltValueNullFieldError('OnProductsEvent', 'products');
    }
  }

  @override
  OnProductsEvent rebuild(void Function(OnProductsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnProductsEventBuilder toBuilder() =>
      new OnProductsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnProductsEvent && products == other.products;
  }

  @override
  int get hashCode {
    return $jf($jc(0, products.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnProductsEvent')
          ..add('products', products))
        .toString();
  }
}

class OnProductsEventBuilder
    implements Builder<OnProductsEvent, OnProductsEventBuilder> {
  _$OnProductsEvent _$v;

  ListBuilder<Product> _products;
  ListBuilder<Product> get products =>
      _$this._products ??= new ListBuilder<Product>();
  set products(ListBuilder<Product> products) => _$this._products = products;

  OnProductsEventBuilder();

  OnProductsEventBuilder get _$this {
    if (_$v != null) {
      _products = _$v.products?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnProductsEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OnProductsEvent;
  }

  @override
  void update(void Function(OnProductsEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnProductsEvent build() {
    _$OnProductsEvent _$result;
    try {
      _$result = _$v ?? new _$OnProductsEvent._(products: products.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OnProductsEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListenForProductsError extends ListenForProductsError {
  @override
  final Object error;

  factory _$ListenForProductsError(
          [void Function(ListenForProductsErrorBuilder) updates]) =>
      (new ListenForProductsErrorBuilder()..update(updates)).build();

  _$ListenForProductsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('ListenForProductsError', 'error');
    }
  }

  @override
  ListenForProductsError rebuild(
          void Function(ListenForProductsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForProductsErrorBuilder toBuilder() =>
      new ListenForProductsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForProductsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListenForProductsError')
          ..add('error', error))
        .toString();
  }
}

class ListenForProductsErrorBuilder
    implements Builder<ListenForProductsError, ListenForProductsErrorBuilder> {
  _$ListenForProductsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  ListenForProductsErrorBuilder();

  ListenForProductsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForProductsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForProductsError;
  }

  @override
  void update(void Function(ListenForProductsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForProductsError build() {
    final _$result = _$v ?? new _$ListenForProductsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
