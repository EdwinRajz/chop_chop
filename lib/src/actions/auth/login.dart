library login;

import 'package:built_value/built_value.dart';
import 'package:shop_chop/src/actions/actions.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';


part 'login.g.dart';

abstract class Login //
    implements
        Built<Login, LoginBuilder>,
        AppAction //
    {
  factory Login(String email, String password) {
    return _$Login((LoginBuilder b) {
      b
        ..email = email
        ..password = password;
    });}
  Login._();

  String get email;

  String get password;

}
abstract class LoginSuccessful //
    implements
        Built<LoginSuccessful, LoginSuccessfulBuilder>,
        UserAction,
        AppAction //
    {
  factory LoginSuccessful(ShopUser user) {
    return _$LoginSuccessful((LoginSuccessfulBuilder b) {
      b.user = user.toBuilder();
    });
  }

  LoginSuccessful._();

  @override
  ShopUser get user;
}
abstract class LoginError //
    implements
        Built<LoginError, LoginErrorBuilder>,
        ErrorAction //
    {
  factory LoginError(Object error) {
    return _$LoginError((LoginErrorBuilder b) => b.error = error);
  }
  LoginError._();
  @override
  Object get error;
}