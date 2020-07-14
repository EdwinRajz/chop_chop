library initialize_app;

import 'package:built_value/built_value.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';

import 'actions.dart';

part 'initialize_app.g.dart';

abstract class InitializeApp //
    implements
        Built<InitializeApp, InitializeAppBuilder>,
        AppAction //
{
  factory InitializeApp([void Function(InitializeAppBuilder b) updates]) = _$InitializeApp;

  InitializeApp._();
}

abstract class InitializeAppSuccessful //
    implements
        Built<InitializeAppSuccessful, InitializeAppSuccessfulBuilder>,
        UserAction,
        AppAction //

{
  factory InitializeAppSuccessful(ShopUser user) {
    return _$InitializeAppSuccessful((InitializeAppSuccessfulBuilder b) {
      b.user = user?.toBuilder();
    });
  }

  InitializeAppSuccessful._();

  @override
  @nullable
  ShopUser get user;
}

abstract class InitializeAppError //
    implements
        Built<InitializeAppError, InitializeAppErrorBuilder>,
        ErrorAction //
{
  factory InitializeAppError(Object error) {
    return _$InitializeAppError((InitializeAppErrorBuilder b) => b.error = error);
  }

  InitializeAppError._();

  @override
  Object get error;
}
