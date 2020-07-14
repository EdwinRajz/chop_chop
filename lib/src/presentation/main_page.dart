import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:shop_chop/src/actions/auth/logout.dart';
import 'package:shop_chop/src/actions/shop/add_to_cart.dart';
import 'package:shop_chop/src/actions/shop/listen_for_discounts.dart';
import 'package:shop_chop/src/actions/shop/listen_for_products.dart';
import 'package:shop_chop/src/containers/added_products_container.dart';
import 'package:shop_chop/src/containers/discounted_products_container.dart';
import 'package:shop_chop/src/containers/products_container.dart';
import 'package:shop_chop/src/containers/user_container.dart';
import 'package:shop_chop/src/layouts/shop_list.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';
import 'package:shop_chop/src/models/shop/product.dart';
import 'package:shop_chop/src/models/shop_state.dart';
import 'package:shop_chop/src/presentation/product_page.dart';
import 'package:shop_chop/src/presentation/search_page.dart';
import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'cart_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);
  static const String id = 'Main';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Store<ShopState> store;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<ShopState>(context)
        ..dispatch(ListenForProducts()) //
        ..dispatch(ListenForDiscounts());
    });
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, ShopUser user) {
        return AddedProductsContainer(
          builder: (BuildContext context, List<Product> addedProducts) {
            return ProductsContainer(
              builder: (BuildContext context, List<Product> products) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Shop Chop'),
                    actions: <Widget>[
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          Navigator.pushNamed(context, SearchPage.id);
                        },
                      ),
                      const SizedBox(width: 3.0),
                      Badge(
                        position: BadgePosition.topRight(top: 1, right: -3),
                        badgeColor: Colors.pinkAccent,
                        badgeContent: Text(
                          '${addedProducts.length}',
                          //
                        ),
                        animationType: BadgeAnimationType.slide,
                        child: IconButton(
                          icon: Icon(Icons.shopping_cart),
                          onPressed: () {
                            Navigator.pushNamed(context, CartPage.id);
                          },
                        ),
                      ),
                      const SizedBox(width: 3.0),
                      IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: _showMyDialog,
                      ),
                    ],
                  ),
                  drawer: Container(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: Drawer(
                      child: Scaffold(
                        appBar: AppBar(
                          title: Text(
                            'Choose a store,\n ${user.name}',
                            style: const TextStyle(fontSize: 16.0),
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
                  body: Center(
                    child: ListView(
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
                                        return ProductPage(
                                          product: products[index],
                                        );
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
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      '${products[index].price.toStringAsFixed(2)} RON',
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
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          child: Image.network('${products[index].image}'),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: SizedBox(
                                            height: MediaQuery.of(context).size.width * 0.1,
                                            width: MediaQuery.of(context).size.width * 0.1,
                                            child: FloatingActionButton(
                                              heroTag: null,
                                              backgroundColor: Colors.green[200],
                                              onPressed: () {
                                                StoreProvider.of<ShopState>(context).dispatch(
                                                  AddToCart(products[index]),
                                                );
                                              },
                                              child: Icon(Icons.add),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Divider(
                          indent: 20.0,
                          endIndent: 20.0,
                          color: Colors.green,
                          thickness: 2.0,
                        ),
                        DiscountedProductsContainer(
                          builder: (BuildContext context, List<Product> discountedProducts) {
                            return CarouselSlider(
                              options: CarouselOptions(
                                height: 100,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 3),
                                autoPlayAnimationDuration: const Duration(milliseconds: 2400),
                                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                                scrollDirection: Axis.horizontal,
                              ),
                              items: discountedProducts.map(
                                (Product product) {
                                  final double discountedPrice = product.price * 0.7;
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Stack(
                                        children: <Widget>[
                                          Image.network(
                                            '${product.image}',
                                          ),
                                          Image.asset(
                                            'assets/discount.png',
                                            width: 80.0,
                                            height: 60.0,
                                          ),
                                          Text(
                                            '${discountedPrice.toStringAsFixed(2)} RON',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                                backgroundColor: Colors.amber),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ).toList(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(
            child: Text('Logging out...'),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                const SizedBox(height: 16.0),
                const Text('Do you want to log out from the ShopChop?'),
                const SizedBox(height: 32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        StoreProvider.of<ShopState>(context).dispatch(Logout());
                        Navigator.of(context).pop();
                      },
                      child: const Text('Yes'),
                    ),
                    FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('No'),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
