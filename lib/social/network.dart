import 'package:flutter/material.dart';


class Network extends StatefulWidget {
	@override
	_NetworkState createState() => _NetworkState();
}

class _NetworkState extends State<Network> {
	int members = 20;
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: GridView.builder(
				gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
					childAspectRatio: 0.8,
					crossAxisCount: 3,
					crossAxisSpacing: 5,
					mainAxisSpacing: 5,
				),
				itemBuilder: (context, position) {
					return Card(
						child: Column(
							children: <Widget>[
								Padding(
									padding: EdgeInsets.only(top: 10),
									child: CircleAvatar(
										minRadius: 40,
									),
								),
								Text(
									"Name",
									style: TextStyle(
										fontSize: 25,
									),
								),
								Text(
									"$members"+" "+"members"
								)
							],
						),
					);
				},
				itemCount: 18,
			),
			floatingActionButton: PopupMenuButton<int>(
				icon: Icon(Icons.more_vert),
				onSelected: (value) {
					print("value:$value");
				},
				itemBuilder: (context) => [
					PopupMenuItem(
						height: 10,
						value: 1,
						child: Chip(
							avatar: Icon(Icons.add),
							label: Text("Join"),
						),
					),
					PopupMenuDivider(height: 4,),
					PopupMenuItem(
						height: 10,
						value: 2,
						child: Chip(
							avatar: Icon(Icons.exit_to_app),
							label: Text("Exit"),
						),
					),
					PopupMenuDivider(height: 4,),
					PopupMenuItem(
						height: 10,
						value: 3,
						child: Chip(
							avatar: Icon(Icons.edit),
							label: Text("Edit"),
						),
					),
					PopupMenuDivider(height: 4,),
					PopupMenuItem(
						height: 10,
						value: 4,
						child: Chip(
							avatar: Icon(Icons.create_new_folder),
							label: Text("Create"),
						),
					),
				],
			),
		);
	}
}
