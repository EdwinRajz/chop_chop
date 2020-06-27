import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:shop_chop/src/actions/shop/listen_for_products.dart';
import 'package:shop_chop/src/containers/product_container.dart';
import 'package:shop_chop/src/containers/registration_info_container.dart';
import 'package:shop_chop/src/layouts/shop_list.dart';
import 'package:shop_chop/src/models/auth/registration_info.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';
import 'package:shop_chop/src/models/shop/product.dart';
import 'package:shop_chop/src/models/shop_state.dart';
import 'package:shop_chop/src/presentation/product_page.dart';

import 'cart_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);
  static const String id = 'Main';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Store<ShopState> store;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<ShopState>(context)..dispatch(ListenForProducts());
    });
  }

  @override
  Widget build(BuildContext context) {
    return RegistrationInfoContainer(
      builder: (BuildContext context, RegistrationInfo registrationInfo) {
        return ProductContainer(
          builder: (BuildContext context, List<Product> products) {
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                title: const TextField(
                  decoration: InputDecoration(hintText: 'search for an item'),
                  //todo: maybe use algolia for this function
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.category),
                    onPressed: () {
                      // todo: displays a popup screen from which the user can select a category that filters the displayed items
                      // todo:
                    },
                  ),
                  const SizedBox(width: 10.0),
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.pushNamed(context, CartPage.id);
                    },
                  ),
                ],
              ),
              drawer: Container(
                width: MediaQuery.of(context).size.width * 0.50,
                child: Drawer(
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text(
                        'Choose a store,\n ${registrationInfo?.name}',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    body: Container(
                      child: ListView.builder(
                        itemCount: shops.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            color: Colors.green,
                            child: Text(
                              '${shops[index]}',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),

              // todo: items will be displayed according to the selected shop

              body: Center(
                child: isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height * 0.7,
                            child: GridView.builder(
                              physics: const ScrollPhysics(),
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(3.0),
                              itemCount: products.length,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                              itemBuilder: (BuildContext context, int index) {
                                const double footerHeight = 32.0;
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute<void>(
                                        fullscreenDialog: true,
                                        builder: (BuildContext context) {
                                          return ProductPage(product: products[index],);
                                        },
                                      ),
                                    );
                                  },
                                  child: GridTile(
                                    header: Container(
                                      width: 16,
                                      height: 24,
                                      margin: const EdgeInsets.only(left: 10, right: 60, top: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.circular(14.0),
                                      ),
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        '${products[index].price} RON',
                                        style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    footer: Container(
                                      height: footerHeight,
                                      child: Text(
                                        '${products[index].title}',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsetsDirectional.only(bottom: footerHeight),
                                      child: Image.network('${products[index].image}'),
                                    ),
                                  ),
                                );
                                // todo: double tap enlarges image and shows details
                                // todo: a popup screen will be displayed and user will be able to enter quantity or pieces if required
                              },
                            ),
                          ),
                          Expanded(
                            child: Row(
                              // todo: favourite items will be displayed here
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.network('${products[1].image}'),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.network('${products[2].image}'),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.network('${products[3].image}'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
              ),
            );
          },
        );
      },
    );
  }
}
