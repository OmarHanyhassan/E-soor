import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AboutDev extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("About developer"),
				centerTitle: true,
			),
			body: Center(
				child: Padding(
					padding: EdgeInsets.all(15),
					child: Column(
						children: <Widget>[
							CircleAvatar(
								maxRadius: 100,
								backgroundImage: ExactAssetImage("allAssets/images/mmm.jpg"),
							),
							Padding(
								padding: EdgeInsets.all(10),
							),
							Text(
								"Omar Yehia",
								style: TextStyle(
									fontSize: 25,
									fontWeight: FontWeight.bold,
								),
							),
						],
					),
				)
			),
		);
	}
}
