import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shop_chop/src/actions/actions.dart';
import 'package:shop_chop/src/actions/initialize_app.dart';
import 'package:shop_chop/src/actions/shop/listen_for_products.dart';
import 'package:shop_chop/src/data/auth_api.dart';
import 'package:shop_chop/src/data/product_api.dart';
import 'package:shop_chop/src/epics/products_epics.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';
import 'package:shop_chop/src/models/shop/product.dart';
import 'package:shop_chop/src/models/shop_state.dart';

import 'auth_epics.dart';

class AppEpics {
  const AppEpics({
    @required AuthApi authApi,
    @required ProductApi productApi,
  })  : assert(authApi != null),
        assert(productApi != null),
        _authApi = authApi,
        _productApi = productApi;

  final AuthApi _authApi;
  final ProductApi _productApi;

  Epic<ShopState> get epics {
    return combineEpics(<Epic<ShopState>>[
      TypedEpic<ShopState, InitializeApp>(_initializeApp),
      AuthEpics(authApi: _authApi).epics,
      ProductEpics(productApi: _productApi).epics,
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp> actions, EpicStore<ShopState> store) {
    return actions //
        .flatMap((InitializeApp action) => _authApi
            .getUser()
            .asStream()
            .expand<AppAction>((ShopUser user) => <AppAction>[
                  InitializeAppSuccessful(user),
                ])
            .onErrorReturnWith((dynamic error) => InitializeAppError(error)));
  }
}
