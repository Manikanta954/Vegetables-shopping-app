import 'package:flutter/material.dart';
import 'package:veggie/fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrouncolor,
      drawer: Drawer(),
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
                                      fontFamily: Myfonts,
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
                              fontFamily: Myfonts,
                              color: Colors.white,
                              fontSize: 29.8,
                              fontWeight: FontWeight.w300,
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
                                fontFamily: Myfonts,
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
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
            Row(
              children: [
                Container(
                  width: 160,
                  height: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: containercolor,
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
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
                                    fontFamily: Myfonts,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.amber[300]),
                          ),
                          onPressed: () {},
                          child: Text('           Buy          ',
                          style: TextStyle(fontFamily: Myfonts),),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
