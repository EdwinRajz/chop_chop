// GENERATED CODE - DO NOT MODIFY BY HAND

part of listen_for_discounts;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListenForDiscounts extends ListenForDiscounts {
  factory _$ListenForDiscounts(
          [void Function(ListenForDiscountsBuilder) updates]) =>
      (new ListenForDiscountsBuilder()..update(updates)).build();

  _$ListenForDiscounts._() : super._();

  @override
  ListenForDiscounts rebuild(
          void Function(ListenForDiscountsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForDiscountsBuilder toBuilder() =>
      new ListenForDiscountsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForDiscounts;
  }

  @override
  int get hashCode {
    return 719712162;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ListenForDiscounts').toString();
  }
}

class ListenForDiscountsBuilder
    implements Builder<ListenForDiscounts, ListenForDiscountsBuilder> {
  _$ListenForDiscounts _$v;

  ListenForDiscountsBuilder();

  @override
  void replace(ListenForDiscounts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForDiscounts;
  }

  @override
  void update(void Function(ListenForDiscountsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForDiscounts build() {
    final _$result = _$v ?? new _$ListenForDiscounts._();
    replace(_$result);
    return _$result;
  }
}

class _$ListenForDiscountsSuccessful extends ListenForDiscountsSuccessful {
  factory _$ListenForDiscountsSuccessful(
          [void Function(ListenForDiscountsSuccessfulBuilder) updates]) =>
      (new ListenForDiscountsSuccessfulBuilder()..update(updates)).build();

  _$ListenForDiscountsSuccessful._() : super._();

  @override
  ListenForDiscountsSuccessful rebuild(
          void Function(ListenForDiscountsSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForDiscountsSuccessfulBuilder toBuilder() =>
      new ListenForDiscountsSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForDiscountsSuccessful;
  }

  @override
  int get hashCode {
    return 959090593;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ListenForDiscountsSuccessful')
        .toString();
  }
}

class ListenForDiscountsSuccessfulBuilder
    implements
        Builder<ListenForDiscountsSuccessful,
            ListenForDiscountsSuccessfulBuilder> {
  _$ListenForDiscountsSuccessful _$v;

  ListenForDiscountsSuccessfulBuilder();

  @override
  void replace(ListenForDiscountsSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForDiscountsSuccessful;
  }

  @override
  void update(void Function(ListenForDiscountsSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForDiscountsSuccessful build() {
    final _$result = _$v ?? new _$ListenForDiscountsSuccessful._();
    replace(_$result);
    return _$result;
  }
}

class _$OnDiscountsEvent extends OnDiscountsEvent {
  @override
  final BuiltList<Discount> discounts;

  factory _$OnDiscountsEvent(
          [void Function(OnDiscountsEventBuilder) updates]) =>
      (new OnDiscountsEventBuilder()..update(updates)).build();

  _$OnDiscountsEvent._({this.discounts}) : super._() {
    if (discounts == null) {
      throw new BuiltValueNullFieldError('OnDiscountsEvent', 'discounts');
    }
  }

  @override
  OnDiscountsEvent rebuild(void Function(OnDiscountsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnDiscountsEventBuilder toBuilder() =>
      new OnDiscountsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnDiscountsEvent && discounts == other.discounts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, discounts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnDiscountsEvent')
          ..add('discounts', discounts))
        .toString();
  }
}

class OnDiscountsEventBuilder
    implements Builder<OnDiscountsEvent, OnDiscountsEventBuilder> {
  _$OnDiscountsEvent _$v;

  ListBuilder<Discount> _discounts;
  ListBuilder<Discount> get discounts =>
      _$this._discounts ??= new ListBuilder<Discount>();
  set discounts(ListBuilder<Discount> discounts) =>
      _$this._discounts = discounts;

  OnDiscountsEventBuilder();

  OnDiscountsEventBuilder get _$this {
    if (_$v != null) {
      _discounts = _$v.discounts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnDiscountsEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OnDiscountsEvent;
  }

  @override
  void update(void Function(OnDiscountsEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnDiscountsEvent build() {
    _$OnDiscountsEvent _$result;
    try {
      _$result = _$v ?? new _$OnDiscountsEvent._(discounts: discounts.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'discounts';
        discounts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OnDiscountsEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListenForDiscountsError extends ListenForDiscountsError {
  @override
  final Object error;

  factory _$ListenForDiscountsError(
          [void Function(ListenForDiscountsErrorBuilder) updates]) =>
      (new ListenForDiscountsErrorBuilder()..update(updates)).build();

  _$ListenForDiscountsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('ListenForDiscountsError', 'error');
    }
  }

  @override
  ListenForDiscountsError rebuild(
          void Function(ListenForDiscountsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForDiscountsErrorBuilder toBuilder() =>
      new ListenForDiscountsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForDiscountsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListenForDiscountsError')
          ..add('error', error))
        .toString();
  }
}

class ListenForDiscountsErrorBuilder
    implements
        Builder<ListenForDiscountsError, ListenForDiscountsErrorBuilder> {
  _$ListenForDiscountsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  ListenForDiscountsErrorBuilder();

  ListenForDiscountsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForDiscountsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForDiscountsError;
  }

  @override
  void update(void Function(ListenForDiscountsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForDiscountsError build() {
    final _$result = _$v ?? new _$ListenForDiscountsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
