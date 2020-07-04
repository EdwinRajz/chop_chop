import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_chop/src/containers/added_products_container.dart';
import 'package:shop_chop/src/layouts/shop_list.dart';
import 'package:shop_chop/src/models/shop/product.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    Key key,
  }) : super(key: key);

  static const String id = 'Cart';

  @override
  Widget build(BuildContext context) {
    return AddedProductsContainer(
      builder: (BuildContext context, List<Product> addedProducts) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Cart'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                child: const Text('added items will be displayed here'),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(3.0),
                  itemCount: addedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.network('${addedProducts[index].image}'),
                      title: Text('${addedProducts[index].title}'),
                      trailing: Text('${addedProducts[index].price} RON'),
                      contentPadding: const EdgeInsets.all(3.0),
                    );
                  },
                ), // todo: make a listview and add a '-' button to remove items
              ),
              const Divider(
                color: Colors.green,
                thickness: 2.0,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    'Total: ${addedProducts.map<double>((Product m) => m.price.truncateToDouble()).reduce((double a, double b) => a + b)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    height: 50.0,
                    width: 150.0,
                    child: Column(
                      children: <Widget>[
                        Text('Pick up at store'),
                        Icon(Icons.directions_run),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),

                    height: 50.0,
                    width: 150.0,
                    child: Column(
                      children: <Widget>[
                        Text('Home delivery'),
                        Icon(Icons.home),
                      ],
                    ),
                    //todo: follow the courier on google maps using api or display a timer to show the remaining time left until courier arrives
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
