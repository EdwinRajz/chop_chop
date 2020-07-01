library search_for_products;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_chop/src/models/shop/product.dart';

import '../actions.dart';


part 'search_for_products.g.dart';

abstract class SearchForProducts //
    implements
        Built<SearchForProducts, SearchForProductsBuilder>,
        AppAction //
    {
  factory SearchForProducts(String query) {
    return _$SearchForProducts((SearchForProductsBuilder b) => b.query = query);
  }

  SearchForProducts._();

  String get query;
}

abstract class SearchForProductsSuccessful //
    implements
        Built<SearchForProductsSuccessful, SearchForProductsSuccessfulBuilder>,
        AppAction //
    {
  factory SearchForProductsSuccessful(List<Product> products){
    return _$SearchForProductsSuccessful((SearchForProductsSuccessfulBuilder b) {
      b.products = ListBuilder<Product>(products);
    });
  }

  SearchForProductsSuccessful._();

  BuiltList<Product> get products;
}

abstract class SearchForProductsError //
    implements
        Built<SearchForProductsError, SearchForProductsErrorBuilder>,
        ErrorAction //
    {
  factory SearchForProductsError(Object error) {
    return _$SearchForProductsError((SearchForProductsErrorBuilder b) => b.error = error);
  }

  SearchForProductsError._();

  @override
  Object get error;
}