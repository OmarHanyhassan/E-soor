import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reactive_button/flutter_reactive_button.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

String _value = "";
bool isChecked = false;
String reaction;
List<ReactiveIconDefinition> _reactions = <ReactiveIconDefinition>[
  ReactiveIconDefinition(
    assetIcon: 'allAssets/images/like.gif',
    code: 'like',
  ),
  ReactiveIconDefinition(
    assetIcon: 'allAssets/images/haha.gif',
    code: 'haha',
  ),
  ReactiveIconDefinition(
    assetIcon: 'allAssets/images/love.gif',
    code: 'love',
  ),
  ReactiveIconDefinition(
    assetIcon: 'allAssets/images/sad.gif',
    code: 'sad',
  ),
  ReactiveIconDefinition(
    assetIcon: 'allAssets/images/wow.gif',
    code: 'wow',
  ),
  ReactiveIconDefinition(
    assetIcon: 'allAssets/images/angry.gif',
    code: 'angry',
  ),
];
int reacts = 0;

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, position) {
          return Padding(
            padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
            child: Card(
              elevation: 20,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://placekitten.com/400/400"),
                    ),
                    title: Text("Acc Name"),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Acc Type"),
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Text("Date & Time"),
                      ],
                    ),
                    trailing: PopupMenuButton<int>(
                      icon: Icon(Icons.more_horiz),
                      onSelected: (value) {
                        print("value:$value");
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          height: 10,
                          value: 1,
                          child: Chip(
                            avatar: Icon(Icons.report),
                            label: Text("Report"),
                          ),
                        ),
                        PopupMenuItem(
                          height: 10,
                          value: 4,
                          child: Chip(
                            avatar: Icon(Icons.notifications_off),
                            label: Text("Mute"),
                          ),
                        ),
                        PopupMenuItem(
                          child: Chip(
                            avatar: Icon(Icons.bookmark_border),
                            label: Text("Save post"),
                          ),
                        ),
                        PopupMenuItem(
                          child: Chip(
                            avatar: Icon(Icons.link),
                            label: Text("Copy link"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum "
                      "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum "
                      "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum "
                      "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum "
                      "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum "
                      "Lorem Hello World",
                      maxLines: 10,
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ReactiveButton(
                        padding: EdgeInsets.all(0),
                        containerPadding: 0,
                        iconPadding: 2,
                        iconWidth: 32,
                        child: Container(
                            child: reaction == null
                                ? FlatButton(
                                    onPressed: () {},
                                    color: Colors.green,
                                    child: Text("React"),
                                  )
                                : Image.asset(
                                    'allAssets/images/$reaction.png',
                                    width: 32.0,
                                    height: 32.0,
                                  )),
                        icons: _reactions,
                        onTap: () {
                          setState(() {
                            reaction = null;
                            if (reacts > 1) {
                              reacts = 0;
                            } else {
                              reacts--;
                            }
                          });
                        },
                        onSelected: (ReactiveIconDefinition button) {
                          setState(() {
                            reacts++;
                            reaction = button.code;
                            
                          });
                        },
                      ),
                      RaisedButton(
                        // TODO: Implement commenting function.
                        child: Text("Comment"),
                        color: Colors.green,
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                      RaisedButton(
                        // TODO: Implement sharing function.
                        onPressed: () {},
                        child: Text("Share"),
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, position) {
          return Divider(
            indent: 80,
            endIndent: 80,
            thickness: 5,
            color: Colors.red,
          );
        },
        itemCount: 20,
      ),
    );
  }
}
