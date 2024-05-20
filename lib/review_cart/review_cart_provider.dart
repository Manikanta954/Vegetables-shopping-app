import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ReviewCartProvider with ChangeNotifier{
    void addReviewCartData(
    String cartId,
    String cartImage,
    String cartName,
    int cartPrice,
    int cartQauntity,
    ) async {
 await  FirebaseFirestore.instance.collection("reviewcart")
 .doc(FirebaseAuth.instance.currentUser!.uid)
 .collection("YourReviewCart").doc(cartId).set({
    "cartId":cartId,
    "cartName":cartName,
    "cartImage":cartImage,
    "cartPrice":cartPrice,
    "cartQuantity":cartQauntity
 });

  }
}