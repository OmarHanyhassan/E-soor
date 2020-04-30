import 'package:E_Soor/models/category_model.dart';
import 'package:E_Soor/ui/widgets/categoryItems.dart';
import 'package:E_Soor/ui/widgets/selectionAlertDialog.dart';
import 'package:flutter/material.dart';

String categoryName(name) {
  if (name != null) {
    return name;
  } else {
    return "Category Name";
  }
}

bool isSelected = false;
final Category category = Category();

Widget onViewMoreBuild(onViewMore) {
  if (onViewMore != null) {
    return FlatButton(
      onPressed: onViewMore,
      child: Text(
        "view more".toUpperCase(),
        style: TextStyle(
          fontSize: 13,
        ),
      ),
    );
  } else {
    return Container(
      height: 0,
      width: 0,
    );
  }
}

Widget _buildCategoryBar(context, onTap, onViewMore, name) {
  if (isSelected == true) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          // Category Header
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Icon(Icons.check_circle),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            categoryName(name),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onViewMoreBuild(onViewMore)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Category Items
          categoryItems(context, onTap, Axis.horizontal),
          // Spacer
          Divider(
            color: Colors.white,
            thickness: 4,
            height: 30,
            endIndent: MediaQuery.of(context).size.width * 0.35,
            indent: MediaQuery.of(context).size.width * 0.35,
          )
        ],
      ),
    );
  } else {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          // Category Header
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  categoryName(name),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onViewMoreBuild(onViewMore)
              ],
            ),
          ),
          // Category Items
          categoryItems(context, onTap, Axis.horizontal),
          // Spacer
          Divider(
            color: Colors.white,
            thickness: 4,
            height: 30,
            endIndent: MediaQuery.of(context).size.width * 0.35,
            indent: MediaQuery.of(context).size.width * 0.35,
          )
        ],
      ),
    );
  }
}

class CategoryBar extends StatefulWidget {
  final BuildContext context;
  final String name;
  final Function onViewMore;
  final Function onTap;
  final void Function() onDoubleTap;

  CategoryBar(this.context, this.onTap, this.onViewMore, this.name,
      {this.onDoubleTap});
  @override
  _CategoryBarState createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: widget.onDoubleTap,
      onLongPress: () {
        showAlertDialog(context, widget.name);
      },
      child: _buildCategoryBar(
          context, widget.onTap, widget.onViewMore, widget.name),
    );
  }
}
