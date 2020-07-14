library add_to_cart;

import 'package:built_value/built_value.dart';
import 'package:shop_chop/src/models/shop/product.dart';

import '../actions.dart';

part 'add_to_cart.g.dart';

abstract class AddToCart //
    implements
        Built<AddToCart, AddToCartBuilder>,
        AppAction //
{
  factory AddToCart(Product product) {
    return _$AddToCart((AddToCartBuilder b) {
      b.product = product.toBuilder();
    });
  }

  AddToCart._();

  Product get product;


}

abstract class AddToCartSuccessful //
    implements
        Built<AddToCartSuccessful, AddToCartSuccessfulBuilder>,
        AppAction //
{
  factory AddToCartSuccessful([void Function(AddToCartSuccessfulBuilder b) updates]) = _$AddToCartSuccessful;

  AddToCartSuccessful._();

  Product get product;
}

abstract class AddToCartError //
    implements
        Built<AddToCartError, AddToCartErrorBuilder>,
        ErrorAction //
{
  factory AddToCartError(Object error) {
    return _$AddToCartError((AddToCartErrorBuilder b) => b.error = error);
  }

  AddToCartError._();

  @override
  Object get error;
}
