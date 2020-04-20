import 'package:E_Soor/ui/widgets/categoryItems.dart';
import 'package:flutter/material.dart';

Widget CategoryBar(context, onTap, onViewMore) {
  return Container(
    child: Column(
      children: <Widget>[
        // Category Row
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Category Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              FlatButton(
                onPressed: onViewMore,
                child: Text(
                  "view more".toUpperCase(),
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              )
            ],
          ),
        ),
        // Category Items
        CategoryItems(context, onTap),
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
