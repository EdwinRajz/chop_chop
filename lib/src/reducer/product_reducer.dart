import 'package:redux/redux.dart';
import 'package:shop_chop/src/actions/shop/add_to_cart.dart';
import 'package:shop_chop/src/actions/shop/listen_for_discounts.dart';
import 'package:shop_chop/src/actions/shop/listen_for_products.dart';
import 'package:shop_chop/src/models/shop/discount.dart';
import 'package:shop_chop/src/models/shop/product_state.dart';

Reducer<ProductState> productReducer = combineReducers<ProductState>(<Reducer<ProductState>>[
  TypedReducer<ProductState, OnProductsEvent>(_onProductsEvent),
  TypedReducer<ProductState, AddToCart>(_addToCart),
  TypedReducer<ProductState, OnDiscountsEvent>(_onDiscountEvent),
]);

ProductState _onProductsEvent(ProductState state, OnProductsEvent action) {
  return state.rebuild((ProductStateBuilder b) => b.products = action.products.toBuilder());
}

ProductState _addToCart(ProductState state, AddToCart action) {
  return state.rebuild((ProductStateBuilder b) {
    b.products.add(action.product);
  });
}

ProductState _onDiscountEvent(ProductState state, OnDiscountsEvent action) {
  return state.rebuild((ProductStateBuilder b) {
    for (Discount discount in action.discounts) {
      b
        ..discounts[discount.productId] = discount
        ..discounts[discount.discount.toString()];
    }
  });
}
