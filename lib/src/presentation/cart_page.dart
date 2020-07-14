import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shop_chop/src/actions/shop/delete_from_cart.dart';
import 'package:shop_chop/src/containers/added_products_container.dart';
import 'package:shop_chop/src/models/shop/product.dart';
import 'package:shop_chop/src/models/shop_state.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    Key key,
  }) : super(key: key);
  static const String id = 'Cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: AddedProductsContainer(
        builder: (BuildContext context, List<Product> addedProducts) {
          if (addedProducts.isEmpty) {
            return const Center(
              child: Text('There are no products in the cart'),
            );
          }
          return Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(3.0),
                  itemCount: addedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 50.0),
                          child: ListTile(
                            leading: Image.network('${addedProducts[index].image}'),
                            title: Text('${addedProducts[index].title}'),
                            trailing: Text('${addedProducts[index].price.toStringAsFixed(2)} RON'),
                            contentPadding: const EdgeInsets.all(3.0),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              StoreProvider.of<ShopState>(context).dispatch(
                                DeleteFromCart(addedProducts[index]),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ), //
              ),
              const Divider(
                indent: 20.0,
                endIndent: 20.0,
                color: Colors.green,
                thickness: 2.0,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    'Total: ${addedProducts.map<double>((Product m) => m.price).reduce((double a, double b) => a + b).toStringAsFixed(2)} RON',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Colors.pink,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    height: 50.0,
                    width: 150.0,
                    child: Column(
                      children: <Widget>[
                        const Text('Pick up at store'),
                        Icon(Icons.directions_run),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      return showDialog<void>(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Center(
                              child: Text('Estimated time until arrival'),
                            ),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text('ETA 60 minutes'),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: Colors.green[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: 50.0,
                      width: 150.0,
                      child: Column(
                        children: <Widget>[
                          const Text('Home delivery'),
                          Icon(Icons.home),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
