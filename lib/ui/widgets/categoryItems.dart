import 'package:E_Soor/ui/widgets/bookItem.dart';
import 'package:flutter/material.dart';

Widget categoryItems(context, onTap, scrollDirection) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.3,
    child: ListView.builder(
      scrollDirection: scrollDirection,
      itemBuilder: (context, index) {
        return bookItem(context, onTap);
      },
      itemCount: 20,
    ),
  );
}
