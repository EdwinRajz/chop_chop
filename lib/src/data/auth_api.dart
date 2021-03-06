import 'dart:async';
import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_chop/src/models/auth/registration_info.dart';
import 'package:shop_chop/src/models/auth/shop_user.dart';
import 'package:shop_chop/src/models/shop/product.dart';

class AuthApi {
  const AuthApi({
    @required FirebaseAuth auth,
    @required Firestore firestore,
    @required AlgoliaIndexReference index,
  })  : assert(auth != null),
        assert(firestore != null),
        assert(index != null),
        _auth = auth,
        _index = index,
        _firestore = firestore;

  final AlgoliaIndexReference _index;
  final FirebaseAuth _auth;
  final Firestore _firestore;

  /// Returns the current login in user or null if there is no user logged in.
  Future<ShopUser> getUser() async {
    final FirebaseUser firebaseUser = await _auth.currentUser();
    return _buildUser(firebaseUser);
  }

  /// Tries to log the user in using his email and password
  Future<ShopUser> login(String email, String password) async {
    final AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    if (result != null) {}
    return _buildUser(result.user);
  }

  /// Sign out
  Future<void> logout() async {
    await _auth.signOut();
  }

  ///Create a user
  Future<ShopUser> createUser(RegistrationInfo info) async {
    AuthResult result;
    if (info.email != null) {
      result = await _auth.createUserWithEmailAndPassword(email: info.email, password: info.password);
    }
    return _buildUser(result.user, info);
  }

  ///User
  Future<ShopUser> _buildUser(FirebaseUser firebaseUser, [RegistrationInfo info]) async {
    if (firebaseUser == null) {
      return null;
    }
    final DocumentSnapshot snapshot = await _firestore.document('users/${firebaseUser.uid}').get();

    if (snapshot.exists && info == null) {
      return ShopUser.fromJson(snapshot.data);
    }

    assert(info != null);
    final ShopUser user = ShopUser((ShopUserBuilder b) {
      b
        ..uid = firebaseUser.uid
        ..email = info.email
        ..birthDate = info.birthDate
        ..phone = info.phone
        ..name = info.name;
    });
    await _firestore.document('users/${user.uid}').setData(user.json);
    return user;
  }

  Future<List<Product>> searchProducts({@required String query}) async {
    final AlgoliaQuerySnapshot result = await _index //
        .search(query)
        .getObjects();
    if (result.empty) {
      return <Product>[];
    } else {
      return result.hits //
          .map((AlgoliaObjectSnapshot object) => Product.fromJson(object.data))
          .toList();
    }
  }
}
