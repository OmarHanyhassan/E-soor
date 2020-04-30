import 'package:E_Soor/ui/screens/store/book_page.dart';
import 'package:E_Soor/ui/screens/store/subCategoryScreen.dart';
import 'package:E_Soor/ui/widgets/AppSearch.dart';
import 'package:E_Soor/ui/widgets/categoryBar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
          return CategoryBar(
              context, openBookPage, openSubCategoryPage, "SubCategory");
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
