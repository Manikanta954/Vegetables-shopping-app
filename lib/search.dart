import 'package:flutter/material.dart';
import 'package:veggie/Models/product_model.dart';
import 'package:veggie/fonts.dart';
import 'package:veggie/Widgets/single_item.dart';

class Search extends StatefulWidget {
  final List<ProductModel>?search;
  const Search({super.key,this.search});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        backgroundColor: appcolor,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu_rounded),
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Items",
              style: TextStyle(fontFamily: Myfonts),
            ),
          ),
          Container(
            height: 52,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: backgrouncolor,
                  filled: true,
                  hintText: "Search for items",
                  suffixIcon: const Icon(Icons.search)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Column(
          //     children: widget.search.map((e) {
          //   return SingleItem(
          //     isBool: false,
          //   );
          // }).toList()),
          SingleItem(
              isBool: false,
            ),
        ],
      ),
    );
  }
}
