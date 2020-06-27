import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';
import 'package:shop_chop/src/models/shop_state.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<ShopUser> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ShopState, ShopUser>(
      converter: (Store<ShopState> store) => store.state.auth.user,
      builder: builder,
    );
  }
}
