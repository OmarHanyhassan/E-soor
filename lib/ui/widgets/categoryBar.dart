import 'package:E_Soor/ui/widgets/categoryItems.dart';
import 'package:flutter/material.dart';

String categoryName(name) {
  if (name == null) {
    return "Category Name";
  } else {
    return name;
  }
}

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

Widget CategoryBar(context, onTap, onViewMore, name) {
  return Container(
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
        CategoryItems(context, onTap, Axis.horizontal),
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
