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
      bottomNavigationBar: ListTile(
        title: Text("Total Amount",style: TextStyle(fontFamily: Myfonts)),
        subtitle: Text("\$ 170.00",style: TextStyle(fontFamily: Myfonts)),
        trailing:Container(
          width: 160,
          child: MaterialButton(onPressed:() {
            
          },
          color: appcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          child: Text("Submit",style: TextStyle(fontFamily: Myfonts)),),
          
        ),
      ),
      body: ListView(
        children:  [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
   
        ],
      ),
    );
  }
}