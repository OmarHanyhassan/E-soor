import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget bookItem(context, onTap) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: GestureDetector(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://flutter.dev/images/catalog-widget-placeholder.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Flex(
                              direction: Axis.vertical,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, top: 3.0, right: 10.0),
                                  child: Text("Book Name"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, top: 3.0, right: 10.0),
                                  child: Text("Author Name"),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "20" + " LE",
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: RatingBarIndicator(
                  rating: 2.5,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 35.0,
                  direction: Axis.vertical,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
