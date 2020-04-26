import 'package:flutter/material.dart';

Widget StoreContent(context, onTap, onViewMore, List<Widget> children) {
  Widget buildContent() {
    if (children.length == 0) {
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
          return children[index];
        },
        itemCount: children.length,
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
      // ListView.builder(
      //   shrinkWrap: true,
      //   physics: NeverScrollableScrollPhysics(),
      //   itemBuilder: (context, index) {
      //     return CategoryBar(context, onTap, onViewMore, null);
      //   },
      //   itemCount: 5,
      // )
    ],
  );
}
