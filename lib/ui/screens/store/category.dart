import 'package:E_Soor/ui/screens/store/book_page.dart';
import 'package:E_Soor/ui/screens/store/subCategory.dart';
import 'package:E_Soor/ui/widgets/AppSearch.dart';
import 'package:E_Soor/ui/widgets/categoryBar.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category Name"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: AppSearch());
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CategoryBar(context, openBookPage, openSubCategoryPage, null);
        },
        itemCount: 10,
      ),
    );
  }

  void openBookPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BookPage()));
  }

  void openSubCategoryPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SubCategory()));
  }
}
