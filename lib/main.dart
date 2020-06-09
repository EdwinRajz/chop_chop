import 'package:flutter/material.dart';
import 'package:shop_chop/presentation/cart_page.dart';
import 'package:shop_chop/presentation/login_page.dart';
import 'package:shop_chop/presentation/main_page.dart';
import 'package:shop_chop/presentation/registration_page.dart';

void main() {
  runApp(ShopChop());
}

class ShopChop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFFfbf7de),
      ),
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        MainPage.id: (BuildContext context) => MainPage(),
        LoginPage.id: (BuildContext context) => LoginPage(),
        RegistrationPage.id: (BuildContext context) => RegistrationPage(),
        CartPage.id: (BuildContext context) => CartPage(),
      },
    );
  }
}
