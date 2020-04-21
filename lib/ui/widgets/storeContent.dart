import 'package:flutter/material.dart';
import 'package:E_Soor/ui/widgets/categoryBar.dart';

Widget StoreContent(context, onTap, onViewMore) {
  return ListView(
    shrinkWrap: true,
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.width * 0.125,
        child: ListView.builder(
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
      ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, position) {
          return CategoryBar(context, onTap, onViewMore);
        },
        itemCount: 20,
      ),
    ],
  );
}
