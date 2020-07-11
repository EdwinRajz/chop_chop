import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:shop_chop/src/models/shop/discount.dart';
import 'package:shop_chop/src/models/shop/product.dart';
import 'package:shop_chop/src/models/shop_state.dart';


class DiscountedProductsContainer extends StatelessWidget {
  const DiscountedProductsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Discount>> builder;


  @override
  Widget build(BuildContext context) {
    return StoreConnector<ShopState, List<Discount>>(
      converter: (Store<ShopState> store) => store.state.product.discounts.toList(),
      builder: builder,
    );
  }
}