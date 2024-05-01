import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:veggie/Models/product_model.dart';

class ProductProvider with ChangeNotifier {
 
  productModels(QueryDocumentSnapshot element) {
    productModel = ProductModel(
      productImage: element.get("productImage"),
      productName: element.get("productName"),
      productPrice: element.get("productPrice"),
    );
    search.add(productModel);
  }
   List<ProductModel> search = [];
  List<ProductModel> herbsProductsList = [];
  late ProductModel productModel;
  
  fatchHerbsProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();
    value.docs.forEach(
      (element) {
        productModels(element);
        newList.add(productModel);
      },
    );
    herbsProductsList = newList;
    notifyListeners();
  }

  List<ProductModel> get getHerbsHerbsProductDataList {
    return herbsProductsList;
  }

//Fresh products
  List<ProductModel> freshProductsList = [];
  fatchProductProductData() async {
    List<ProductModel> newLis = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("FreshProduct").get();
    value.docs.forEach(
      (element) {
        productModels(element);
        newLis.add(productModel);
      },
    );
    freshProductsList = newLis;
    notifyListeners();
  }

  List<ProductModel> get getFreshProductDataList {
    return freshProductsList;
  }

//search return
 List<ProductModel> get getAllProductsToSearch {
    return search;
  }
  }