import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux/redux.dart';
import 'package:shop_chop/src/models/shop/product.dart';
import 'package:shop_chop/src/models/shop_state.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Product>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ShopState, List<Product>>(
      converter: (Store<ShopState> store) {
        return store.state.product.products.toList();
      },
      builder: builder,
    );
  }
}
