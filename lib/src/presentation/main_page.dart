import 'package:flutter/material.dart';
import 'package:shop_chop/src/layouts/shop_list.dart';

import 'cart_page.dart';

class MainPage extends StatefulWidget {
  static const String id = 'Main';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
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
        drawer: Drawer(
          child: ListView.builder(
            itemCount: shops.length,
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                child: Text('${shops[index]}'),
              );
            },
          ),
        ),

        // todo: items will be displayed according to the selected shop

        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(3.0),
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      color: Colors.grey,
                      margin: EdgeInsets.all(6.0),
                      child: ListView(
                        children: <Widget>[
                          Image.network(items[index]),
                          Text('${items[index]}'),
                        ],
                      ));
                  // todo: adds item to cart if tapped
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
                    height: 70,
                    width: 70,
                    color: Colors.grey,
                    margin: EdgeInsets.all(6.0),
                    child: Text('Favourite Item 1'),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.grey,
                    margin: EdgeInsets.all(6.0),
                    child: Text('Favourite Item 2'),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.grey,
                    margin: EdgeInsets.all(6.0),
                    child: Text('Favourite Item 3'),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.grey,
                    margin: EdgeInsets.all(6.0),
                    child: Text('Favourite tem 4'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
