import 'package:flutter/material.dart';
import 'package:veggie/fonts.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child:Container(
              height: 100,
              child: Center(
                child: Image.asset("assets/images/orange.png"),
              ),
            ), 
          ),
          Expanded(
            child:Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text("ProductName",style: TextStyle(fontFamily: Myfonts),),
                      Text("\$50/50 Gram",style: TextStyle(color: Colors.grey,fontFamily: Myfonts,fontSize: 12),)
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child:  Text("50 Gram",
                          style: TextStyle(color: Colors.grey,fontSize: 14),
                          ) ,
                        ),
                        Center(
                          child:Icon(Icons.arrow_drop_down,size: 20,),
                        )
                      ],),
                  )
                ],
              ),
            ), 
          ),
         Expanded(
            child:Container(
              height: 100,
              child:Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 32),
                child: Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add,color: appcolor,size: 20,),
                          Text("Add", style: TextStyle(color:appcolor,))
      
                        ],
                      ),
                    ),
                ),
              ),
            ), 
          ),        
        ],
      ),
    );
  }
}