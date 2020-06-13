import 'package:flutter/material.dart';
import 'package:shop_chop/src/layouts/shop_list.dart';


class CartPage extends StatelessWidget {
  static const String id = 'Cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: const Text('added items will be displayed here'),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(3.0),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.grey,
                  margin: const EdgeInsets.all(6.0),
                  child: Text('${items[index]}'),
                );
              },
            ), // todo: make a listview and add a '-' button to remove items
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.lightBlue,
                height: 50.0,
                width: 100.0,
                child: const Text('Pick up at store'),
              ),
              Container(
                color: Colors.lightGreen,
                height: 50.0,
                width: 100.0,
                child: const Text('Home delivery'),
                //todo: follow the courier on google maps using api or display a timer to show the remaining time left until courier arrives
              ),
            ],
          )
        ],
      ),
    );
  }
}
