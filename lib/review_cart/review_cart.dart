import 'package:flutter/material.dart';
import 'package:veggie/fonts.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review Cart',style: TextStyle(fontFamily: Myfonts),),
        backgroundColor: appcolor,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}