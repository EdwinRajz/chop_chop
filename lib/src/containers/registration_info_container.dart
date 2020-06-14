import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:shop_chop/src/models/shop_state.dart';
import 'package:shop_chop/src/models/auth/registration_info.dart';

class RegistrationInfoContainer extends StatelessWidget {
  const RegistrationInfoContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<RegistrationInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ShopState, RegistrationInfo>(
      converter: (Store<ShopState> store) => store.state.auth.info??RegistrationInfo(),
      builder: builder,
    );
  }
}
