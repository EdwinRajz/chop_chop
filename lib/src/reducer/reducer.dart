
import 'package:shop_chop/src/actions/actions.dart';
import 'package:shop_chop/src/models/shop_state.dart';

import 'auth_reducer.dart';

ShopState reducer(ShopState state, dynamic action) {
  if (action is ErrorAction) {
    final dynamic error = action.error;
    try {
      print('error: $error');
      print('stacktrace: ${error.stackTrace}');
    } catch (_) {}
  }

  print(action);
  return state.rebuild((ShopStateBuilder b) {
    b
      ..auth = authReducer(state.auth, action).toBuilder();

  });
}
