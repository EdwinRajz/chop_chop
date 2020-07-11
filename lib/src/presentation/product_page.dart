import 'package:flutter/material.dart';
import 'package:shop_chop/src/models/shop/product.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key key, @required this.product}) : super(key: key);
  static const String id = 'Product';
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.title}'),
      ),
      body: Column(
        children: <Widget>[
          Image.network('${product.image}'),
          Container(
            child: Text('${product.description}'),
          ),
        ],
      ),
    );
  }
}
