import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
	@override
	_FeedState createState() => _FeedState();
}

String _value = "";

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
											backgroundImage: NetworkImage("https://placekitten.com/400/400"),
										),
										title: Text("Acc Name"),
										subtitle: Row(
											mainAxisSize: MainAxisSize.min,
											children: <Widget>[
												Text("Acc Type"),
												Padding(padding: EdgeInsets.all(5),),
												Text("Date & Time"),
											],
										),
										trailing: IconButton(
											icon: Icon(Icons.more_horiz),
											onPressed: () {},
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
									Row(),
									Flex(
										direction: Axis.horizontal,
										mainAxisAlignment: MainAxisAlignment.spaceEvenly,
										children: <Widget>[
											FlatButton(
												onPressed: () {},
												child: Text("React"),
												color: Colors.green,
											),
											RaisedButton(
												onPressed: () {},
												child: Text("Comment"),
												color: Colors.green,
											),
											RaisedButton(
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
