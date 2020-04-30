import 'package:E_Soor/models/category_model.dart';
import 'package:flutter/material.dart';

class EditCategoriesScreen extends StatefulWidget {
  final Category category;
  EditCategoriesScreen({this.category});
  @override
  _EditCategoriesScreenState createState() => _EditCategoriesScreenState();
}

class _EditCategoriesScreenState extends State<EditCategoriesScreen> {
  TextEditingController titleController;
  TextEditingController listController;
  static String stringLists = "";
  List<String> lists;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Edit " + widget.category.name),
      ),
      body: Container(
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextFormField(
              controller: titleController,
              textCapitalization: TextCapitalization.words,
              initialValue: widget.category.name,
              onFieldSubmitted: (value) {
                setState(() {
                  titleController.text = value;
                });
              },
            ),
            TextFormField(
              controller: listController,
            ),
          ],
        ),
      ),
    );
  }
}
