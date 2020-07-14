import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:shop_chop/src/actions/initialize_app.dart';
import 'package:shop_chop/src/data/auth_api.dart';
import 'package:shop_chop/src/data/product_api.dart';
import 'package:shop_chop/src/epics/app_epics.dart';
import 'package:shop_chop/src/models/shop_state.dart';
import 'package:shop_chop/src/presentation/cart_page.dart';
import 'package:shop_chop/src/presentation/home.dart';
import 'package:shop_chop/src/presentation/login_page.dart';
import 'package:shop_chop/src/presentation/main_page.dart';
import 'package:shop_chop/src/presentation/registration_page.dart';
import 'package:shop_chop/src/presentation/search_page.dart';
import 'package:shop_chop/src/reducer/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //FirebaseAuth.instance.signOut();
  final AuthApi authApi = AuthApi(
    auth: FirebaseAuth.instance,
    firestore: Firestore.instance,
    index:
        const Algolia.init(applicationId: 'QBA7WQDNJ8', apiKey: 'a80adfd77bad4b1d0b77c7217e29cb57').index('products'),
  );

  final ProductApi productApi = ProductApi(
    firestore: Firestore.instance,
    storage: FirebaseStorage.instance,
  );

  final AppEpics epics = AppEpics(
    authApi: authApi,
    productApi: productApi,
  );

  final Store<ShopState> store = Store<ShopState>(
    reducer,
    initialState: ShopState(),
    middleware: <Middleware<ShopState>>[
      EpicMiddleware<ShopState>(epics.epics),
    ],
  )..dispatch(InitializeApp());

  runApp(ChopShop(store: store));
}

class ChopShop extends StatelessWidget {
  const ChopShop({Key key, this.store}) : super(key: key);

  final Store<ShopState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<ShopState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        home: const Home(),
        routes: <String, WidgetBuilder>{
          MainPage.id: (BuildContext context) => const MainPage(),
          LoginPage.id: (BuildContext context) => const LoginPage(),
          RegistrationPage.id: (BuildContext context) => const RegistrationPage(),
          CartPage.id: (BuildContext context) => const CartPage(),
          SearchPage.id: (BuildContext context) => const SearchPage(),
        },
      ),
    );
  }
}
