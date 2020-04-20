import 'package:E_Soor/ui/widgets/categoryItem.dart';
import 'package:flutter/material.dart';

Widget CategoryItems(context, onTap) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.3,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CategoryItem(context, onTap);
      },
      itemCount: 20,
    ),
  );
}
