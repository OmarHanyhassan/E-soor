import 'package:flutter/material.dart';
import '../store/book_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Store extends StatefulWidget {
	@override
	_StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
	ScrollController scrollController = new ScrollController();
	int price = 60;

	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Scaffold(
				body: ListView(
					children: <Widget>[
						// Categories Row
						SingleChildScrollView(
							scrollDirection: Axis.horizontal,
							child: Padding(
								padding: EdgeInsets.all(5),
								child: ListView.builder(
									itemBuilder: (context, _) {
										return FlatButton(
											child: Text("Sample"),
											onPressed: () {},
											color: Colors.red,
										);
									},
									itemCount: 8,
								),
								/*child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                        FlatButton(
                                            child: Text("Sample"),
                                            onPressed: () {},
                                            color: Colors.red,
                                        ),
                                            Text("    "),
                                        FlatButton(
                                            child: Text("Sample"),
                                            onPressed: () {},
                                            color: Colors.red,
                                        ),
                                    ],
                                ),*/
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
																crossAxisAlignment: CrossAxisAlignment.start,
																mainAxisSize: MainAxisSize.min,
																children: <Widget>[
																	Padding(
																		padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																		child: Container(
																			width: 150,
																			height: 150,
																			decoration: BoxDecoration(
																				image: DecorationImage(
																					fit: BoxFit.cover,
																					image: NetworkImage(
																						'https://flutter.io/images/catalog-widget-placeholder.png',
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
										onPressed: () {},
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
										onPressed: () {},
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
										onPressed: () {},
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
										onPressed: () {},
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
										onPressed: () {},
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisSize: MainAxisSize.min,
															children: <Widget>[
																Padding(
																	padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
																	child: Container(
																		width: 150,
																		height: 150,
																		decoration: BoxDecoration(
																			image: DecorationImage(
																				fit: BoxFit.cover,
																				image: NetworkImage(
																					'https://flutter.io/images/catalog-widget-placeholder.png',
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
																					padding:
																					EdgeInsets.fromLTRB(3, 2, 25, 2),
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
			),
		);
	}

	void openBookPage() {
		Navigator.push(
			context, MaterialPageRoute(builder: (context) => BookPage()));
	}
}
