import 'package:shop_chop/src/actions/actions.dart';
import 'package:shop_chop/src/actions/auth/update_registration_info.dart';
import 'package:shop_chop/src/models/auth/auth_state.dart';

import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers<AuthState>(<Reducer<AuthState>>[
  TypedReducer<AuthState, UserAction>(_userAction),
  TypedReducer<AuthState, UpdateRegistrationInfo>(_updateRegistrationInfo),
]);


AuthState _userAction(AuthState state, UserAction action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}

AuthState _updateRegistrationInfo(AuthState state, UpdateRegistrationInfo action) {
  return state.rebuild((AuthStateBuilder b) => b.info = action.info.toBuilder());
}

