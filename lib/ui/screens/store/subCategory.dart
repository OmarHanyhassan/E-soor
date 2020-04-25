import 'package:E_Soor/ui/screens/store/book_page.dart';
import 'package:E_Soor/ui/widgets/AppSearch.dart';
import 'package:E_Soor/ui/widgets/categoryBar.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatefulWidget {
  SubCategory({Key key}) : super(key: key);

  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  final List chars = const [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SubCategory Name"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: AppSearch());
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return CategoryBar(context, openBookPage, null, chars[position]);
        },
        itemCount: chars.length,
      ),
    );
  }

  void openBookPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookPage(),
      ),
    );
  }
}
