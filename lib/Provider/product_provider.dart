import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:veggie/Models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> herbsProductsList = [];
  late ProductModel productModel;
  fatchHerbsProductData() async {
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();
    value.docs.forEach((element) {
      print(element.data());
    });
  }
}
