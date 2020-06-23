library listen_for_products;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_chop/src/models/shop/product.dart';

import '../actions.dart';

part 'listen_for_products.g.dart';

abstract class ListenForProducts //
    implements
        Built<ListenForProducts, ListenForProductsBuilder>,
        AppAction //

{
  factory ListenForProducts([void Function(ListenForProductsBuilder b) updates]) = _$ListenForProducts;

  ListenForProducts._();

}

abstract class ListenForProductsSuccessful //
    implements
        Built<ListenForProductsSuccessful, ListenForProductsSuccessfulBuilder>,
        AppAction //
{
  factory ListenForProductsSuccessful([void Function(ListenForProductsSuccessfulBuilder b) updates]) =
      _$ListenForProductsSuccessful;

  ListenForProductsSuccessful._();
}

abstract class OnProductsEvent //
    implements
        Built<OnProductsEvent, OnProductsEventBuilder>,
        AppAction //
{
  factory OnProductsEvent(List<Product> products) {
    return _$OnProductsEvent((OnProductsEventBuilder b) {
      b.products = ListBuilder<Product>(products);
    });
  }

  OnProductsEvent._();

  BuiltList<Product> get products;
}

abstract class ListenForProductsError //
    implements
        Built<ListenForProductsError, ListenForProductsErrorBuilder>,
        ErrorAction //
{
  factory ListenForProductsError(Object error) {
    return _$ListenForProductsError((ListenForProductsErrorBuilder b) => b.error = error);
  }

  ListenForProductsError._();

  @override
  Object get error;
}
