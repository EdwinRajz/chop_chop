import 'package:shop_chop/src/actions/shop/listen_for_discounts.dart';
import 'package:shop_chop/src/actions/shop/listen_for_products.dart';
import 'package:shop_chop/src/data/product_api.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:meta/meta.dart';
import 'package:shop_chop/src/actions/actions.dart';
import 'package:shop_chop/src/models/shop/discount.dart';
import 'package:shop_chop/src/models/shop/product.dart';
import 'package:shop_chop/src/models/shop_state.dart';

class ProductEpics {
  const ProductEpics({
    @required ProductApi productApi,
  })  : assert(productApi != null),
        _productApi = productApi;

  final ProductApi _productApi;

  Epic<ShopState> get epics {
    return combineEpics(<Epic<ShopState>>[
      TypedEpic<ShopState, ListenForProducts>(_listenForProducts),
      TypedEpic<ShopState, ListenForDiscounts>(_listenForDiscounts),
    ]);
  }

  Stream<AppAction> _listenForProducts(Stream<ListenForProducts> actions, EpicStore<ShopState> store) {
    return actions //
        .flatMap((ListenForProducts action) => _productApi //
            .listen()
            .map<AppAction>((List<Product> products) => OnProductsEvent(products))
            .onErrorReturnWith((dynamic error) => ListenForProductsError(error)));
  }

  Stream<AppAction> _listenForDiscounts(Stream<ListenForDiscounts> actions, EpicStore<ShopState> store) {
    return actions //
        .flatMap((ListenForDiscounts action) => _productApi //
            .getDiscountProducts()
            .map<AppAction>((List<Discount> discounts) => OnDiscountsEvent(discounts))
            .onErrorReturnWith((dynamic error) => ListenForProductsError(error))); //
  }
}
