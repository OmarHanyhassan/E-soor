import 'package:E_Soor/ui/screens/store/book_page.dart';
import 'package:E_Soor/ui/screens/store/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  ScrollController scrollController = new ScrollController();
  static int price = 75;
  int total = 2 * price;
  BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(25.0),
    topRight: Radius.circular(25.0),
  );

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {},
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  // Categories Row
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      /*child: ListView.builder(
									itemBuilder: (context, _) {
										return FlatButton(
											child: Text("Sample"),
											onPressed: () {},
											color: Colors.red,
										);
									},
									itemCount: 8,
								),*/
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlatButton(
                            child: Text("Sample"),
                            onPressed: openCategoryPage,
                            color: Colors.red,
                          ),
                          Text("    "),
                          FlatButton(
                            child: Text("Sample"),
                            onPressed: openCategoryPage,
                            color: Colors.red,
                          ),
                          Text("    "),
                          FlatButton(
                            child: Text("Sample"),
                            onPressed: openCategoryPage,
                            color: Colors.red,
                          ),
                          Text("    "),
                          FlatButton(
                            child: Text("Sample"),
                            onPressed: openCategoryPage,
                            color: Colors.red,
                          ),
                          Text("    "),
                          FlatButton(
                            child: Text("Sample"),
                            onPressed: openCategoryPage,
                            color: Colors.red,
                          ),
                          Text("    "),
                          FlatButton(
                            child: Text("Sample"),
                            onPressed: openCategoryPage,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Items & all the rest
                  Column(
                    children: <Widget>[
                      ListTile(
                        title: Text("For You"),
                        trailing: IconButton(
                          icon: Icon(Icons.more_horiz),
                          onPressed: () {},
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            InkWell(
                              onTap: openBookPage,
                              child: Card(
                                borderOnForeground: true,
                                semanticContainer: true,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                            "Book Name",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Flex(
                                              direction: Axis.horizontal,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      3, 2, 25, 2),
                                                  child: Text("Author Name"),
                                                ),
                                                Text("$price" + " LE")
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 125,
                        endIndent: 125,
                        thickness: 5,
                        height: 50,
                      ),
                      ListTile(
                        title: Text("For You"),
                        trailing: IconButton(
                          icon: Icon(Icons.more_horiz),
                          onPressed: openCategoryPage,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 125,
                        endIndent: 125,
                        thickness: 5,
                        height: 50,
                      ),
                      ListTile(
                        title: Text("For You"),
                        trailing: IconButton(
                          icon: Icon(Icons.more_horiz),
                          onPressed: openCategoryPage,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 125,
                        endIndent: 125,
                        thickness: 5,
                        height: 50,
                      ),
                      ListTile(
                        title: Text("For You"),
                        trailing: IconButton(
                          icon: Icon(Icons.more_horiz),
                          onPressed: openCategoryPage,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 125,
                        endIndent: 125,
                        thickness: 5,
                        height: 50,
                      ),
                      ListTile(
                        title: Text("For You"),
                        trailing: IconButton(
                          icon: Icon(Icons.more_horiz),
                          onPressed: openCategoryPage,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 125,
                        endIndent: 125,
                        thickness: 5,
                        height: 50,
                      ),
                      ListTile(
                        title: Text("For You"),
                        trailing: IconButton(
                          icon: Icon(Icons.more_horiz),
                          onPressed: openCategoryPage,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                            Card(
                              borderOnForeground: true,
                              semanticContainer: true,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 0),
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
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Book Name",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    3, 2, 25, 2),
                                                child: Text("Author Name"),
                                              ),
                                              Text("$price" + " LE")
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                // TODO: Modify it
                child: SlidingUpPanel(
                  borderRadius: radius,
                  maxHeight: 300,
                  backdropEnabled: true,
                  minHeight: 30,
                  controller: PanelController(),
                  panel: Container(
                    decoration: BoxDecoration(
                      color: ThemeData.dark().primaryColor,
                      borderRadius: radius,
                    ),
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "Your Order",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: openCategoryPage,
                            icon: Icon(Icons.delete),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.book),
                          title: Text(
                            "David Copperfield",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text(
                            "By. Charles Dickens",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Text(
                            "\$" + "$price",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.book),
                          title: Text(
                            "Great Expectations",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text(
                            "By. Charles Dickens",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Text(
                            "\$" + "$price",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Total:",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                          trailing: Text(
                            "\$" + "$total",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(75, 0, 75, 2),
                          child: RaisedButton(
                            child: Text("Order"),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  collapsed: Container(
                    child: Center(
                      child: Text("Cart"),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: radius,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openBookPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BookPage()));
  }

  void openCategoryPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Category()));
  }
}
