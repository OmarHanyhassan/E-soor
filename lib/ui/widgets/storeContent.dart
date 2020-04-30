import 'package:E_Soor/models/category_model.dart';
import 'package:E_Soor/ui/screens/editCategoriesScreen.dart';
import 'package:E_Soor/ui/widgets/categoryBar.dart';
import 'package:flutter/material.dart';

Widget storeContent(context, onTap, onViewMore, List<Category> categories) {
  Widget buildContent() {
    if (categories.length == 0) {
      return Center(
        child: Container(
          child: Text("There is no items"),
        ),
      );
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: CategoryBar(
              context,
              onTap,
              onViewMore,
              categories[index].name,
              onDoubleTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditCategoriesScreen(
                      category: categories[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
        itemCount: categories.length,
      );
    }
  }

  return ListView(
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.width * 0.125,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text("Category"),
                color: Colors.red,
              ),
            );
          },
          itemCount: 8,
        ),
      ),
      buildContent(),
    ],
  );
}
