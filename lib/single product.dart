import 'package:flutter/material.dart';
import 'package:veggie/Widgets/count.dart';
import 'package:veggie/fonts.dart';

class SingleProduct extends StatefulWidget {
  final String productImage;

  final String productName;
  final int productPrice;
  const SingleProduct({
    super.key,
    required this.productImage,
    required this.productName, required this.productPrice,
  });

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 6.5),
            width: 160,
            height: 260,
            decoration: BoxDecoration(
              color: containercolor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Expanded(
                  flex: 0,
                  child: Image.asset(widget.productImage),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      children: [
                        Text(
                          widget.productName,
                          style: TextStyle(
                              fontFamily: Myfonts,
                              fontWeight: FontWeight.w100,
                              fontSize: 13.2),
                        ),
                        Text(
                          '\$${widget.productPrice}/50gram',
                          style: TextStyle(
                              fontFamily: Myfonts,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 7.8),
                              child: Text(
                                '50Gram',
                                style: TextStyle(
                                    fontFamily: Myfonts,
                                    fontSize: 10.9,
                                    color: const Color.fromARGB(
                                        255, 134, 131, 131)),
                              ),
                            )),
                          ],
                        ),
                      )),
                      const SizedBox(
                        width: 5,
                      ),
                     Count(
                      productId:"123",
                      productImage:widget.productImage,
                      productName: widget.productName,
                      productPrice: widget.productPrice,
                      productQuantity:"1",
                     ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
