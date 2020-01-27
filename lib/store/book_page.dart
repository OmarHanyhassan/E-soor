import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:E_Soor/main.dart';
class BookPage extends StatefulWidget {
	@override
	_BookState createState() => _BookState();
}

class _BookState extends State<BookPage> with SingleTickerProviderStateMixin {
	int price = 60;
	AnimationController _controller;

	@override
	void initState() {
		_controller = AnimationController(vsync: this);
		super.initState();
	}

	@override
	void dispose() {
		_controller.dispose();
		super.dispose();
	}


	@override
	Widget build(BuildContext context) {
		// TODO: implement build
		return Scaffold(
			appBar: AppBar(
				leading: IconButton(
					icon: AnimatedIcon(
						icon: AnimatedIcons.arrow_menu,
						progress: _controller,
					),
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
					IconButton(
						icon: Icon(Icons.more_vert),
						onPressed: () {},
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
										RatingBar(
											initialRating: 0,
											itemSize: 30,
											allowHalfRating: true,
											glowColor: Colors.green,
											unratedColor: Colors.white,
											itemCount: 5,
											itemBuilder: (context, _) => Icon(
												Icons.star,
												color: Colors.amber,
											),
											onRatingUpdate: (rating) {
												print(rating);
											},
										),
										FlatButton(
											onPressed: () {},
											child: Text("Category"),
											color: Colors.red[500],
										),
									],
								),
								Image.network(
									'https://flutter.io/images/catalog-widget-placeholder.png',
									scale: 1.2,
								),
							],
						),
					],
				),
			),
		);
	}
}
