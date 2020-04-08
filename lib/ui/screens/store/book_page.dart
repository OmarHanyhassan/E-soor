import 'package:E_Soor/ui/widgets/AppSearch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookPage extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<BookPage> {
  int price = 60;
  ScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: AppSearch());
            },
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                child: Chip(
                  backgroundColor: Colors.blueGrey,
                  label: Text("Report"),
                  avatar: Icon(Icons.flag),
                ),
              ),
            ],
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Book Name",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            "Author Name",
                            style: TextStyle(
                              fontSize: 16.5,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onPressed: () {},
                        ),
                        RatingBarIndicator(
                          rating: 2.6,
                          itemSize: 30,
                          unratedColor: Colors.white,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                        RaisedButton(
                          elevation: 0.0,
                          child: Text(
                            "Category",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          "Price:- $price",
                          style: TextStyle(
                            fontSize: 15.5,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.cyan,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onRefresh() {}
}
