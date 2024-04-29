import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:veggie/Models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> herbsProductsList = [];
  late ProductModel productModel;
  fatchHerbsProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();
    value.docs.forEach(
      (element) {
        productModel = ProductModel(
          productImage: element.get("productImage"),
          productName: element.get("productName"),
          productPrice: element.get("productPrice"),
        );
        newList.add(productModel);
      },
    );
    herbsProductsList = newList;
    notifyListeners();
  }

  List<ProductModel>get getHerbsHerbsProductDataList {
    return herbsProductsList;
  }
}
