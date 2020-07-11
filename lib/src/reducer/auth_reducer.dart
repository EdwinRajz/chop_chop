import 'package:shop_chop/src/actions/actions.dart';
import 'package:shop_chop/src/actions/auth/logout.dart';
import 'package:shop_chop/src/actions/auth/update_registration_info.dart';
import 'package:shop_chop/src/actions/shop/add_to_cart.dart';
import 'package:shop_chop/src/actions/shop/delete_from_cart.dart';
import 'package:shop_chop/src/actions/shop/search_for_products.dart';
import 'package:shop_chop/src/models/auth/auth_state.dart';

import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers<AuthState>(<Reducer<AuthState>>[
  TypedReducer<AuthState, UserAction>(_userAction),
  TypedReducer<AuthState, UpdateRegistrationInfo>(_updateRegistrationInfo),
  TypedReducer<AuthState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AuthState, SearchForProductsSuccessful>(_searchForProductsSuccessful),
  TypedReducer<AuthState, AddToCart>(_addToCart),
  TypedReducer<AuthState, DeleteFromCart>(_deleteFromCart),
]);

AuthState _userAction(AuthState state, UserAction action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}

AuthState _updateRegistrationInfo(AuthState state, UpdateRegistrationInfo action) {
  return state.rebuild((AuthStateBuilder b) => b.info = action.info.toBuilder());
}

AuthState _logoutSuccessful(AuthState state, LogoutSuccessful action) {
  return AuthState();
}

AuthState _searchForProductsSuccessful(AuthState state, SearchForProductsSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.searchResult = action.products.toBuilder();
  });
}

AuthState _addToCart(AuthState state, AddToCart action) {
  return state.rebuild((AuthStateBuilder b) {
    b.addedProducts.add(action.product);
  });
}

AuthState _deleteFromCart(AuthState state, DeleteFromCart action) {
  return state.rebuild((AuthStateBuilder b){
    b.addedProducts.remove(action.product);
  });
}
