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
  List<String> tags = [];
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      content: Text(
        "Saved successfully",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subhead.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      backgroundColor: Colors.green,
    );
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              globalKey.currentState.showSnackBar(snackBar);
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Edit " + widget.category.name),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 15.0,
                  ),
                  child: Text(
                    "Edit Category name :",
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: titleController,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hasFloatingPlaceholder: true,
                      hintText: widget.category.name,
                    ),
                    onSubmitted: (value) {
                      setState(() {
                        titleController.text = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 15.0,
                  ),
                  child: Text(
                    "Edit SubCategories :",
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hasFloatingPlaceholder: true,
                    ),
                    controller: listController,
                    onSubmitted: (value) {
                      setState(() {
                        tags.addAll(value.split(","));
                      });
                    },
                  ),
                ),
              ],
            ),
            Wrap(
              children: tags.map(
                (tag) {
                  return Chip(
                    label: Text(tag),
                    deleteIcon: Icon(Icons.cancel),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
