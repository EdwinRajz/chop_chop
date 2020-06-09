import 'dart:async';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_chop/models/auth/registration_info.dart';
import 'package:shop_chop/models/auth/shop_user.dart';


class AuthApi {
  const AuthApi({
    @required FirebaseAuth auth,
    @required Firestore firestore,
  })  : assert(auth != null),
        assert(firestore != null),
        _auth = auth,
        _firestore = firestore;


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

  /// Send an email containing the forgotten password to the user
  Future<void> sendForgottenPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  ///Create a user
  Future<ShopUser> createUser(RegistrationInfo info) async {
    AuthResult result;
    if (info.email != null) {
      result = await _auth.createUserWithEmailAndPassword(email: info.email, password: info.password);
    } else {
      assert(info.phone != null);
      assert(info.verificationId != null);
      assert(info.smsCode != null);

      final AuthCredential credential =
      PhoneAuthProvider.getCredential(verificationId: info.verificationId, smsCode: info.smsCode);
      result = await _auth.signInWithCredential(credential);
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
        ..username = info.username
        ..email = info.email
        ..birthDate = info.birthDate
        ..phone = info.phone
        ..following = ListBuilder<String>();
    });
    await _firestore.document('users/${user.uid}').setData(user.json);
    return user;
  }




}
