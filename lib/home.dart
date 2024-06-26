import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veggie/Myprofile/drawer.dart';
import 'package:veggie/Provider/product_provider.dart';
import 'package:veggie/fonts.dart';
import 'package:veggie/product_overview.dart';
import 'package:veggie/search.dart';
import 'package:veggie/single%20product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductProvider? productProvider;
  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.fatchHerbsProductData();
    productProvider.fatchProductProductData();
    super.initState();
  }

  Widget _buildFreshProduct(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Fresh Fruits",
                style: TextStyle(fontFamily: Myfonts, fontSize: 17.5),
              ),
              InkWell(
                onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Search(
                            search:productProvider!.getFreshProductDataList,
                          )));
                    },
                child: Text(
                  "View all",
                  style: TextStyle(
                      fontFamily: Myfonts, color: Colors.grey, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: productProvider!.getFreshProductDataList
                  .map((freshProductData) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: freshProductData.productName,
                        productImage: freshProductData.productImage,
                      ),
                    ));
              },
              child: SingleProduct(
                productImage: freshProductData.productImage,
                productName: freshProductData.productName,
                productPrice: freshProductData.productPrice,
              ),
            );
          }).toList()
              //  [
              //   InkWell(
              //     onTap: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => const ProductOverview(
              //               productImage: "assets/images/kiwi.png",
              //               productName: "Kiwi",
              //             ),
              //           ));
              //     },
              //     child: const SingleProduct(
              //       productImage: "assets/images/kiwi.png",
              //       productName: "Kiwi",
              //       productPrice: 45,
              //     ),
              //   ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => const ProductOverview(
              //             productImage: "assets/images/guava.png",
              //             productName: "Guava",
              //           ),
              //         ));
              //   },
              //   child: const SingleProduct(
              //     productImage: "assets/images/guava.png",
              //     productName: "Guava",
              //     productPrice: 60
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => const ProductOverview(
              //             productImage: "assets/images/papaya.png",
              //             productName: "Papaya",
              //           ),
              //         ));
              //   },
              //   child: const SingleProduct(
              //     productImage: "assets/images/papaya.png",
              //     productName: "Papaya",
              //     productPrice: 75,
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => const ProductOverview(
              //             productImage: "assets/images/orange.png",
              //             productName: "Orange",
              //           ),
              //         ));
              //   },
              //   child: const SingleProduct(
              //     productImage: "assets/images/orange.png",
              //     productName: "Orange",
              //     productPrice: 78,
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => const ProductOverview(
              //             productImage: "assets/images/cherrytomato.png",
              //             productName: "Cherry Tomato",
              //           ),
              //         ));
              //   },
              //   child: const SingleProduct(
              //     productImage: "assets/images/cherrytomato.png",
              //     productName: "Cherry Tomato",
              //     productPrice: 45,
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => const ProductOverview(
              //             productImage: "assets/images/apple.png",
              //             productName: "Apple",
              //           ),
              //         ));
              //   },
              //   child: const SingleProduct(
              //     productImage: "assets/images/apple.png",
              //     productName: "Apple", productPrice: 100,
              //   ),
              // ),

              ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context);
    return Scaffold(
      backgroundColor: backgrouncolor,
      drawer: Mydrawer(),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(fontFamily: Myfonts),
        ),
        actions: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Color(0xffd4d181),
            child: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Search(search:productProvider!.getAllProductsToSearch,)));
              },
              icon: Icon(
                Icons.search_rounded,
                size: 21,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shop),
            ),
          ),
        ],
        backgroundColor: appcolor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/veg1.jpg')),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 300, bottom: 10),
                          child: Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                                color: appcolor,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50))),
                            child: Center(
                              child: Text(
                                "Vegi",
                                style: TextStyle(
                                    fontFamily: Myfonts,
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      BoxShadow(
                                          blurRadius: 5,
                                          color: Colors.green.shade900,
                                          offset: const Offset(3, 3))
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child: Text(
                            '30% Off',
                            style: TextStyle(
                              fontFamily: Myfonts,
                              color: Colors.white,
                              fontSize: 29.8,
                              fontWeight: FontWeight.w300,
                              shadows: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.green.shade900,
                                    offset: const Offset(3, 3))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child: Text(
                            'On all vegetables',
                            style: TextStyle(
                              fontFamily: Myfonts,
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              shadows: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.green.shade900,
                                    offset: const Offset(3, 3))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Herbs and sesonings',
                    style: TextStyle(fontFamily: Myfonts, fontSize: 17.8),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Search(
                            search:productProvider!.getHerbsHerbsProductDataList,
                          )));
                    },
                    child: Center(
                      child: Text(
                        'View all',
                        style:
                            TextStyle(fontFamily: Myfonts, color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: productProvider!.getHerbsHerbsProductDataList
                      .map((herbsProductData) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productName: herbsProductData.productName,
                            productImage: herbsProductData.productImage,
                          ),
                        ));
                  },
                  child: SingleProduct(
                    productImage: herbsProductData.productImage,
                    productName: herbsProductData.productName,
                    productPrice: herbsProductData.productPrice,
                  ),
                );
              }).toList()
                  // children: [
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => const ProductOverview(
                  //             productImage: "assets/images/brocoli.png",
                  //             productName: "Broccoli",
                  //           ),
                  //         ));
                  //   },
                  //   child: const SingleProduct(
                  //     productImage: "assets/images/brocoli.png",
                  //     productName: "Broccoli",
                  //   ),
                  // ),
                  //   InkWell(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => const ProductOverview(
                  //               productImage: "assets/images/cilantro.png",
                  //               productName: "Cilantro",
                  //             ),
                  //           ));
                  //     },
                  //     child: const SingleProduct(
                  //       productImage: "assets/images/cilantro.png",
                  //       productName: "Cilantro",
                  //     ),
                  //   ),
                  //   InkWell(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => const ProductOverview(
                  //               productImage: "assets/images/romainelettuce.png",
                  //               productName: "Romaine Lettuce",
                  //             ),
                  //           ));
                  //     },
                  //     child: const SingleProduct(
                  //       productImage: "assets/images/romainelettuce.png",
                  //       productName: "Romaine Lettuce",
                  //     ),
                  //   ),
                  //   InkWell(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => const ProductOverview(
                  //               productImage: "assets/images/freshmint.png",
                  //               productName: "Fresh Mint",
                  //             ),
                  //           ));
                  //     },
                  //     child: const SingleProduct(
                  //       productImage: "assets/images/freshmint.png",
                  //       productName: "Fresh Mint",
                  //     ),
                  //   ),
                  //   InkWell(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => const ProductOverview(
                  //               productImage: "assets/images/rosemary.png",
                  //               productName: "Rosemary",
                  //             ),
                  //           ));
                  //     },
                  //     child: const SingleProduct(
                  //       productImage: "assets/images/rosemary.png",
                  //       productName: "Rosemary",
                  //     ),
                  //   ),
                  //   InkWell(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => const ProductOverview(
                  //               productImage: "assets/images/methi.png",
                  //               productName: "Methi",
                  //             ),
                  //           ));
                  //     },
                  //     child: const SingleProduct(
                  //       productImage: "assets/images/methi.png",
                  //       productName: "Methi",
                  //     ),
                  //   ),
                  // ],
                  ),
            ),
            _buildFreshProduct(context),
          ],
        ),
      ),
    );
  }
}
