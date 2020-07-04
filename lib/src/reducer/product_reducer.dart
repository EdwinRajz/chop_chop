import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:shop_chop/src/actions/shop/add_to_cart.dart';
import 'package:shop_chop/src/actions/shop/listen_for_products.dart';
import 'package:shop_chop/src/models/shop/product.dart';
import 'package:shop_chop/src/models/shop/product_state.dart';

Reducer<ProductState> productReducer = combineReducers<ProductState>(<Reducer<ProductState>>[
  TypedReducer<ProductState, OnProductsEvent>(_onProductsEvent),
  TypedReducer<ProductState, AddToCart>(_addToCart),
]);

ProductState _onProductsEvent(ProductState state, OnProductsEvent action) {
  return state.rebuild((ProductStateBuilder b) => b.products = action.products.toBuilder());
}

ProductState _addToCart(ProductState state, AddToCart action) {
  return state.rebuild((ProductStateBuilder b) {
    b
      .products.add(action.product);
  });
}