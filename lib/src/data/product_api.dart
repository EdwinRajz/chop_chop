import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:shop_chop/src/models/shop/discount.dart';
import 'package:shop_chop/src/models/shop/product.dart';

class ProductApi {
  const ProductApi({@required Firestore firestore, @required FirebaseStorage storage})
      : assert(firestore != null),
        assert(storage != null),
        _firestore = firestore;


  final Firestore _firestore;


  Stream<List<Product>> listen() {
    return _firestore //
        .collection('products')
        .snapshots()
        .map((QuerySnapshot snapshot) => snapshot.documents //
            .map((DocumentSnapshot document) => Product.fromJson(document.data))
            .toList());
  }

  Stream<List<Discount>> getDiscountProducts() {
    return _firestore //
        .collection('discounts')
        .snapshots()
        .map((QuerySnapshot snapshot) => snapshot.documents //
            .map((DocumentSnapshot document) => Discount.fromJson(document.data))
            .toList()); // )
  }
}
