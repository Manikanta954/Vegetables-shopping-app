import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veggie/fonts.dart';
import 'package:veggie/review_cart/review_cart_provider.dart';

class Count extends StatefulWidget {
  String productName;
  String productImage;
  String productId;
  String productQuantity;
  int productPrice;
  Count({super.key,
  required this.productId,
  required this.productImage,
  required this.productName,
  required this.productPrice,
  required this.productQuantity});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int count = 1;
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    ReviewCartProvider reviewCartProvider = Provider.of(context);
    return Expanded(
        child: Container(
            height: 30,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            child: isTrue == true
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.remove,
                        size: 20,
                        color: Color.fromARGB(255, 223, 217, 40),
                      ),
                      Text("1",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 223, 217, 40),
                          )),
                      Center(
                        child: Icon(
                          Icons.add,
                          size: 20,
                          color: Color.fromARGB(255, 223, 217, 40),
                        ),
                      ),
                    ],
                  )
                : Center(
                    child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          isTrue = true;
                        },
                      );
                      // reviewCartProvider.addReviewCartData(cartId, cartImage, cartName, cartPrice, cartQauntity)
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(color: appcolor),
                    ),
                  ))));
  }
}
