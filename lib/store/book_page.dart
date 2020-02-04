import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:E_Soor/main.dart';
import 'package:googleapis/books/v1.dart' as bookApi;

class BookPage extends StatefulWidget {
	@override
	_BookState createState() => _BookState();
}

class _BookState extends State<BookPage> {
	int price = 60;

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
			body: SingleChildScrollView(
				scrollDirection: Axis.vertical,
				child: Column(
					children: <Widget>[
						Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: <Widget>[
								Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: <Widget>[
										Text(
											"Book Name",
											style: TextStyle(
												fontSize: 30,
												fontStyle: FontStyle.italic,
												color: Colors.orange[300],
											),
										),
										Text(
											"Author Name",
											style: TextStyle(
												fontSize: 20,
												color: Colors.lightBlue[500],
											),
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
										FlatButton(
											onPressed: () {},
											child: Text("Category"),
											color: Colors.red[500],
										),
									],
								),
								VerticalDivider(),
								Expanded(
									child: Image.network(
										'https://flutter.io/images/catalog-widget-placeholder.png',
									),
								),
							],
						),
					],
				),
			),
		);
	}
}
