import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:veggie/fonts.dart';
import 'package:veggie/sign_in.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget singleproducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.5),
      width: 160,
      height: 260,
      decoration: BoxDecoration(
        color: containercolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 0,
            child: Image.asset('assets/images/basil.jpg'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  Text(
                    'Fresh Basil',
                    style: TextStyle(
                        fontFamily: Myfonts,
                        fontWeight: FontWeight.w100,
                        fontSize: 13.2),
                  ),
                  Text(
                    '50\$/50 Gram',
                    style: TextStyle(
                        fontFamily: Myfonts, color: Colors.grey, fontSize: 12),
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
                        padding: EdgeInsets.only(left: 7.8),
                        child: Text(
                          '50Gram',
                          style: TextStyle(
                              fontFamily: Myfonts,
                              fontSize: 10.9,
                              color: Color.fromARGB(255, 134, 131, 131)),
                        ),
                      )),
                    ],
                  ),
                )),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
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
                      Icon(
                        Icons.add,
                        size: 20,
                        color: Color.fromARGB(255, 223, 217, 40),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listtile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 35,
        color: Colors.black54,
      ),
      title: Text(
        title,
        style:
            TextStyle(fontFamily: Myfonts, fontSize: 15, color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrouncolor,
      drawer: Drawer(
          child: Container(
        color: Color(0Xffd1ad17),
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 46,
                    backgroundColor: Colors.white24,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome Guest",
                        style: TextStyle(
                            fontFamily: Myfonts,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.5),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                          height: 30,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text("Login",
                                  style: TextStyle(
                                      fontFamily: Myfonts,
                                      color:
                                          Color.fromARGB(255, 90, 88, 88))))),
                    ],
                  )
                ],
              ),
            ),
            listtile(icon: Icons.home_outlined, title: "Home"),
            listtile(icon: Icons.shopping_bag_outlined, title: "Review cart"),
            listtile(icon: Icons.person, title: "Profile"),
            listtile(
                icon: Icons.notifications_outlined, title: "Notifications"),
            listtile(icon: Icons.favorite_outline_rounded, title: "Wish list"),
            InkWell(
              child: listtile(
                icon: Icons.arrow_back,
                title: "Go back",
              ),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context) => SignIn(),));
              },
            )
          ],
        ),
      )),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(fontFamily: Myfonts),
        ),
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shop),
            ),
          ),
        ],
        backgroundColor: const Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/veg1.jpg')),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 150, bottom: 10),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Color(0xffd6b738),
                                borderRadius: BorderRadius.only(
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
                        Text(
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
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
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
                  Expanded(
                    child: Container(),
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
                  Text(
                    'View all',
                    style: TextStyle(fontFamily: Myfonts, color: Colors.grey),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleproducts(),
                  singleproducts(),
                  singleproducts(),
                  singleproducts(),
                  singleproducts(),
                  singleproducts(),
                  singleproducts(),
                  singleproducts()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fresh fruits',
                    style: TextStyle(fontFamily: Myfonts, fontSize: 17.8),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontFamily: Myfonts, color: Colors.grey),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleproducts(),
                  singleproducts(),
                  singleproducts(),
                  singleproducts(),
                  singleproducts(),
                  singleproducts()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
