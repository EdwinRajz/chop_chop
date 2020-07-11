library listen_for_discounts;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_chop/src/models/shop/discount.dart';

import '../actions.dart';

part 'listen_for_discounts.g.dart';

abstract class ListenForDiscounts //
    implements
        Built<ListenForDiscounts, ListenForDiscountsBuilder>,
        AppAction //
{
  factory ListenForDiscounts([void Function(ListenForDiscountsBuilder b) updates]) = _$ListenForDiscounts;

  ListenForDiscounts._();
}

abstract class ListenForDiscountsSuccessful //
    implements
        Built<ListenForDiscountsSuccessful, ListenForDiscountsSuccessfulBuilder>,
        AppAction //
{
  factory ListenForDiscountsSuccessful([void Function(ListenForDiscountsSuccessfulBuilder b) updates]) =
      _$ListenForDiscountsSuccessful;

  ListenForDiscountsSuccessful._();
}

abstract class OnDiscountsEvent //
    implements
        Built<OnDiscountsEvent, OnDiscountsEventBuilder>,
        AppAction //

{
  factory OnDiscountsEvent(List<Discount> discounts) {
    return _$OnDiscountsEvent((OnDiscountsEventBuilder b) {
      b.discounts = ListBuilder<Discount>(discounts);
    });
  }

  OnDiscountsEvent._();

  BuiltList<Discount> get discounts;
}

abstract class ListenForDiscountsError //
    implements
        Built<ListenForDiscountsError, ListenForDiscountsErrorBuilder>,
        ErrorAction //
{
  factory ListenForDiscountsError(Object error) {
    return _$ListenForDiscountsError((ListenForDiscountsErrorBuilder b) => b.error = error);
  }

  ListenForDiscountsError._();

  @override
  Object get error;
}
