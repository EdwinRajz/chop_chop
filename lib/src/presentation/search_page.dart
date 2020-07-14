import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shop_chop/src/actions/shop/search_for_products.dart';
import 'package:shop_chop/src/containers/products_search_result_container.dart';
import 'package:shop_chop/src/models/shop/product.dart';
import 'package:shop_chop/src/models/shop_state.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);
  static const String id = 'Search';

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _query = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Material(
            color: Theme.of(context).bottomAppBarColor,
            elevation: 6.0,
            child: Container(
              padding: EdgeInsetsDirectional.only(top: MediaQuery.of(context).padding.top),
              margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              child: TextField(
                controller: _query,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'search for a product',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                ),
                onChanged: (String value) {
                  StoreProvider.of<ShopState>(context).dispatch(SearchForProducts(value));
                },
              ),
            ),
          ),
          Flexible(
            child: ProductSearchResultContainer(
              builder: (BuildContext context, List<Product> products) {
                if (products.isEmpty) {
                  return const Center(
                    child: Text('Enter a value to search'),
                  );
                }
                return GridView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(3.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Product product = products[index];
                    return GridTile(
                      header: Container(
                        width: 16,
                        height: 24,
                        margin: const EdgeInsets.only(left: 10, right: 60, top: 10),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${product.price} RON',
                          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      footer: Container(
                        height: 32.0,
                        child: Text(
                          '${product.title}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsetsDirectional.only(bottom: 32.0),
                        child: Image.network('${product.image}'),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
