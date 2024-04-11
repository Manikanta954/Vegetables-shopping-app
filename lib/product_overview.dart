import 'package:flutter/material.dart';
import 'package:veggie/fonts.dart';

enum SigninCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  final String ?productName;
  final String ?productImage;
  const ProductOverview({super.key,this.productName,this.productImage});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SigninCharacter _character = SigninCharacter.fill;
  Widget bottomNavigatorBar({
    Color? iconcolor,
    Color? backgrouncolor,
    Color? color,
    required String title,
    IconData? icondata,
  }) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(20),
      color: backgrouncolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icondata,
            size: 17,
            color: iconcolor,
          ),
          SizedBox(width: 5),
          Text(
            title,
            style: TextStyle(fontFamily: Myfonts, color: color),
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigatorBar(
              backgrouncolor: bottomnavbar,
              title: "Add to wishlist",
              color: Colors.white,
              icondata: Icons.favorite_outline,
              iconcolor: Colors.white),
          bottomNavigatorBar(
              backgrouncolor: appcolor,
              title: "Add to cart",
              color: Colors.white,
              icondata: Icons.shopping_cart,
              iconcolor: Colors.white),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffd6b738),
        elevation: 1,
        title: Text(
          "Product View",
          style: TextStyle(
            fontFamily: Myfonts,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      widget.productName??" ",
                      style: TextStyle(fontFamily: Myfonts),
                    ),
                    subtitle: Text("\$50"),
                  ),
                  Expanded(
                    child: Container(
                      height: 250,
                      padding: EdgeInsets.all(10),
                      child: Image.asset(widget.productImage??""),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    width: double.infinity,
                    child: Text(
                      "Available Options",
                      style: TextStyle(fontFamily: Myfonts, fontSize: 12.7),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green[700],
                            ),
                            Radio(
                              activeColor: Colors.green[700],
                              value: SigninCharacter.fill,
                              onChanged: (value) {
                                setState(() {
                                  _character = value!;
                                });
                              },
                              groupValue: _character,
                            ),
                          ],
                        ),
                        Text(
                          "\$50",
                          style: TextStyle(fontFamily: Myfonts),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add),
                              Text(
                                "Add",
                                style: TextStyle(
                                    color: appcolor, fontFamily: Myfonts),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text(
                          "About this product",
                          style: TextStyle(fontFamily: Myfonts),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Basil, (Ocimum basilicum), annual herb of the mint family (Lamiaceae), grown for its aromatic leaves. Basil is likely native to India and is widely grown as a kitchen herb. The leaves are used fresh or dried to flavour meats, fish, salads, and sauces; basil tea is a stimulant."),
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}
