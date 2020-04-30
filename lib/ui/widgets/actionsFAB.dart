import 'package:E_Soor/models/category_model.dart';
import 'package:E_Soor/ui/screens/editCategoriesScreen.dart';
import 'package:flutter/material.dart';
import 'package:E_Soor/main.dart';

class ActionsFAB extends StatefulWidget {
  final selectedCategory;
  ActionsFAB({this.selectedCategory});
  @override
  _ActionsFABState createState() => _ActionsFABState();
}

class _ActionsFABState extends State<ActionsFAB> {
  @override
  Widget build(BuildContext context) {
    return actionsFabBuild();
  }

  Widget actionsFabBuild() {
    Category category = widget.selectedCategory;
    return FloatingActionButton(
      backgroundColor: themeData(context).accentColor,
      child: Icon(Icons.more_vert),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditCategoriesScreen(
              category: category,
            ),
          ),
        );
      },
    );
  }
}
