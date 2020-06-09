import 'package:shop_chop/src/models/auth/shop_user.dart';

abstract class AppAction {}

abstract class ErrorAction extends AppAction {
  Object get error;
}

typedef ActionResult = void Function(dynamic action);

abstract class UserAction implements AppAction {
  ShopUser get user;
}
