import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shop_chop/src/actions/actions.dart';
import 'package:shop_chop/src/actions/auth/login.dart';
import 'package:shop_chop/src/actions/auth/logout.dart';
import 'package:shop_chop/src/actions/auth/reserve_username.dart';
import 'package:shop_chop/src/actions/auth/sign_up.dart';
import 'package:shop_chop/src/data/auth_api.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';
import 'package:shop_chop/src/models/shop_state.dart';

class AuthEpics {
  const AuthEpics({@required AuthApi authApi})
      : assert(authApi != null),
        _authApi = authApi;
  final AuthApi _authApi;

  Epic<ShopState> get epics {
    return combineEpics(<Epic<ShopState>>[
      TypedEpic<ShopState, Login>(_login),
      TypedEpic<ShopState, Logout>(_logout),
      TypedEpic<ShopState, SignUp>(_signUp),
      TypedEpic<ShopState, ReserveUsername>(_reserveUsername),

    ]);
  }
  Stream<AppAction> _login(Stream<Login> actions, EpicStore<ShopState> store) {
    return actions //
        .flatMap((Login action) => _authApi
        .login(action.email, action.password)
        .asStream()
        .map<AppAction>((ShopUser user) => LoginSuccessful(user))
        .onErrorReturnWith((dynamic error) => LoginError(error)));
  }

  Stream<AppAction> _logout(Stream<Logout> actions, EpicStore<ShopState> store) {
    return actions //
        .flatMap((Logout action) => _authApi
        .logout()
        .asStream()
        .mapTo<AppAction>(LogoutSuccessful())
        .onErrorReturnWith((dynamic error) => LogoutError(error)));
  }


  Stream<AppAction> _signUp(Stream<SignUp> actions, EpicStore<ShopState> store) {
    return actions //
        .flatMap((SignUp action) => _authApi
        .createUser(store.state.auth.info)
        .asStream()
        .map<AppAction>((ShopUser user) => SignUpSuccessful(user))
        .onErrorReturnWith((dynamic error) => SignUpError(error))
        .doOnData(action.result));
  }

  Stream<AppAction> _reserveUsername(Stream<ReserveUsername> actions, EpicStore<ShopState> store) {
    return actions //
        .flatMap((ReserveUsername action) => _authApi
        .reserveUsername(email: store.state.auth.info.email, displayName: store.state.auth.info.username)
        .asStream()
        .map<AppAction>((String username) => ReserveUsernameSuccessful(username))
        .onErrorReturnWith((dynamic error) => ReserveUsernameError(error)));
  }
}
