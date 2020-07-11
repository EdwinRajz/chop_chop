library delete_from_cart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_chop/src/models/shop/product.dart';

import '../actions.dart';

part 'delete_from_cart.g.dart';

abstract class DeleteFromCart //
    implements
        Built<DeleteFromCart, DeleteFromCartBuilder>,
        AppAction //
{
  factory DeleteFromCart(Product product)  {
    return _$DeleteFromCart((DeleteFromCartBuilder b){
      b.product = product.toBuilder();
    } );
}

  DeleteFromCart._();

  Product get product;
}

abstract class DeleteFromCartSuccessful //
    implements
        Built<DeleteFromCartSuccessful, DeleteFromCartSuccessfulBuilder>,
        AppAction //
{
  factory DeleteFromCartSuccessful(Product product)  {
    return _$DeleteFromCartSuccessful((DeleteFromCartSuccessfulBuilder b){
      b.product = product.toBuilder();
    } );
  }

  DeleteFromCartSuccessful._();

  Product get product;
}

abstract class DeleteFromCartError //
    implements
        Built<DeleteFromCartError, DeleteFromCartErrorBuilder>,
        ErrorAction //
{
  factory DeleteFromCartError(Object error) {
    return _$DeleteFromCartError((DeleteFromCartErrorBuilder b) => b.error = error);
  }

  DeleteFromCartError._();

  @override
  Object get error;
}
