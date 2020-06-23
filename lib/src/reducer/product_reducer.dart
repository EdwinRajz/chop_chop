import 'package:redux/redux.dart';
import 'package:shop_chop/src/actions/shop/listen_for_products.dart';
import 'package:shop_chop/src/models/shop/product_state.dart';

Reducer<ProductState> productReducer = combineReducers<ProductState>(<Reducer<ProductState>>[
  TypedReducer<ProductState, OnProductsEvent>(_onProductsEvent),
]);



ProductState _onProductsEvent(ProductState state, OnProductsEvent action) {
  return state.rebuild((ProductStateBuilder b) =>
    b.products = action.products.toBuilder()
  );
}
