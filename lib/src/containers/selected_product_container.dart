import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:shop_chop/src/models/shop/product.dart';
import 'package:flutter/material.dart';
import 'package:shop_chop/src/models/shop_state.dart';

class SelectedProductContainer extends StatelessWidget {
  const SelectedProductContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Product> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ShopState, Product>(
      converter: (Store<ShopState> store) {

      },
      builder: builder,
    );
  }
}