// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_for_products;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchForProducts extends SearchForProducts {
  @override
  final String query;

  factory _$SearchForProducts(
          [void Function(SearchForProductsBuilder) updates]) =>
      (new SearchForProductsBuilder()..update(updates)).build();

  _$SearchForProducts._({this.query}) : super._() {
    if (query == null) {
      throw new BuiltValueNullFieldError('SearchForProducts', 'query');
    }
  }

  @override
  SearchForProducts rebuild(void Function(SearchForProductsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchForProductsBuilder toBuilder() =>
      new SearchForProductsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchForProducts && query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(0, query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchForProducts')
          ..add('query', query))
        .toString();
  }
}

class SearchForProductsBuilder
    implements Builder<SearchForProducts, SearchForProductsBuilder> {
  _$SearchForProducts _$v;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  SearchForProductsBuilder();

  SearchForProductsBuilder get _$this {
    if (_$v != null) {
      _query = _$v.query;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchForProducts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchForProducts;
  }

  @override
  void update(void Function(SearchForProductsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchForProducts build() {
    final _$result = _$v ?? new _$SearchForProducts._(query: query);
    replace(_$result);
    return _$result;
  }
}

class _$SearchForProductsSuccessful extends SearchForProductsSuccessful {
  @override
  final BuiltList<Product> products;

  factory _$SearchForProductsSuccessful(
          [void Function(SearchForProductsSuccessfulBuilder) updates]) =>
      (new SearchForProductsSuccessfulBuilder()..update(updates)).build();

  _$SearchForProductsSuccessful._({this.products}) : super._() {
    if (products == null) {
      throw new BuiltValueNullFieldError(
          'SearchForProductsSuccessful', 'products');
    }
  }

  @override
  SearchForProductsSuccessful rebuild(
          void Function(SearchForProductsSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchForProductsSuccessfulBuilder toBuilder() =>
      new SearchForProductsSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchForProductsSuccessful && products == other.products;
  }

  @override
  int get hashCode {
    return $jf($jc(0, products.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchForProductsSuccessful')
          ..add('products', products))
        .toString();
  }
}

class SearchForProductsSuccessfulBuilder
    implements
        Builder<SearchForProductsSuccessful,
            SearchForProductsSuccessfulBuilder> {
  _$SearchForProductsSuccessful _$v;

  ListBuilder<Product> _products;
  ListBuilder<Product> get products =>
      _$this._products ??= new ListBuilder<Product>();
  set products(ListBuilder<Product> products) => _$this._products = products;

  SearchForProductsSuccessfulBuilder();

  SearchForProductsSuccessfulBuilder get _$this {
    if (_$v != null) {
      _products = _$v.products?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchForProductsSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchForProductsSuccessful;
  }

  @override
  void update(void Function(SearchForProductsSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchForProductsSuccessful build() {
    _$SearchForProductsSuccessful _$result;
    try {
      _$result = _$v ??
          new _$SearchForProductsSuccessful._(products: products.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchForProductsSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SearchForProductsError extends SearchForProductsError {
  @override
  final Object error;

  factory _$SearchForProductsError(
          [void Function(SearchForProductsErrorBuilder) updates]) =>
      (new SearchForProductsErrorBuilder()..update(updates)).build();

  _$SearchForProductsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('SearchForProductsError', 'error');
    }
  }

  @override
  SearchForProductsError rebuild(
          void Function(SearchForProductsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchForProductsErrorBuilder toBuilder() =>
      new SearchForProductsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchForProductsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchForProductsError')
          ..add('error', error))
        .toString();
  }
}

class SearchForProductsErrorBuilder
    implements Builder<SearchForProductsError, SearchForProductsErrorBuilder> {
  _$SearchForProductsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  SearchForProductsErrorBuilder();

  SearchForProductsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchForProductsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchForProductsError;
  }

  @override
  void update(void Function(SearchForProductsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchForProductsError build() {
    final _$result = _$v ?? new _$SearchForProductsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
