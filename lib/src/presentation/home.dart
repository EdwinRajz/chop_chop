import 'package:shop_chop/src/containers/user_container.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';

import 'login_page.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';


class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, ShopUser user) {
        print('user: $user');
        return user != null ? const MainPage() : const LoginPage();
      },
    );
  }
}