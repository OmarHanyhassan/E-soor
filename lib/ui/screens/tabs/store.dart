import 'package:E_Soor/ui/screens/store/book_page.dart';
import 'package:E_Soor/ui/screens/store/category.dart';
import 'package:E_Soor/ui/widgets/SlidingPanel.dart';
import 'package:E_Soor/ui/widgets/categoryBar.dart';
import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  /*_onRefresh(){

  }*/
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {},
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            ListView.builder(
              itemBuilder: (context, position) {
                return CategoryBar(context, openBookPage, openCategoryPage);
              },
              itemCount: 20,
            ),
            Positioned(
              child: SlidingPanel(),
            ),
          ],
        ),
      ),
    );
  }

  void openBookPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BookPage()));
  }

  void openCategoryPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Category()));
  }
  
}
