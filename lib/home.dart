import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text(
          'Home',
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
          )
        ],
        backgroundColor: const Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
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
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 150, bottom: 10),
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
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        BoxShadow(
                                            blurRadius: 5,
                                            color: Colors.green.shade900,
                                            offset: Offset(3, 3))
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% Off',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.green.shade900,
                                    offset: Offset(3, 3))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Text(
                              'On all vegetables',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                shadows: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.green.shade900,
                                      offset: Offset(3, 3))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
