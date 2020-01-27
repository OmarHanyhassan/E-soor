import 'package:flutter/material.dart';


class EditProfile extends StatefulWidget {
	@override
	_EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Edit your profile"),
				centerTitle: true,
				actions: <Widget>[
					IconButton(
						icon: Icon(Icons.save),
						tooltip: "Save",
						onPressed: () {},
					),
				],
			),
		);
	}
}
