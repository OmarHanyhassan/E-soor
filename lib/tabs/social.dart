import 'package:flutter/material.dart';
import 'package:E_Soor/help/placeholder_widget.dart';
import 'package:E_Soor/social/feed.dart';
import 'package:E_Soor/social/chats.dart';
import 'package:E_Soor/social/friend_requests.dart';
import 'package:E_Soor/social/network.dart';
import 'package:E_Soor/social/profile.dart';

class Social extends StatefulWidget {
	@override
	_SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {

	int _selectedIndex = 0;
	final List<Widget> _children = [
		PlaceholderWidget(
			Feed(),
		),
		PlaceholderWidget(
			Network(),
		),
		PlaceholderWidget(
			FriendRequests(),
		),
		PlaceholderWidget(
			Chats(),
		),
		PlaceholderWidget(
			Profile(),
		),
	];

	@override
	Widget build(BuildContext context) {
		return RefreshIndicator(
      onRefresh: (){},
          child: Scaffold(
		  	body: _children[_selectedIndex],
		  	bottomNavigationBar: BottomNavigationBar(
		  		currentIndex: _selectedIndex,
		  		onTap: nav,
		  		selectedItemColor: Colors.green,
		  		items: <BottomNavigationBarItem>[
		  			// Feed Icon
		  			BottomNavigationBarItem(
		  				title: Text("Feed"),
		  				icon: Icon(Icons.home),
		  			),
		  			// Network Icon
		  			BottomNavigationBarItem(
		  				title: Text("Network"),
		  				icon: Icon(Icons.group),
		  			),
		  			// Add Friends Icon
		  			BottomNavigationBarItem(
		  				title: Text("Friend Requests"),
		  				icon: Icon(Icons.person_add),
		  			),
		  			// Chats Icon
		  			BottomNavigationBarItem(
		  				title: Text("Chats"),
		  				icon: Icon(Icons.chat),
		  			),
		  			// Settings Icon
		  			BottomNavigationBarItem(
		  				title: Text("Profile"),
		  				icon: Icon(Icons.person),
		  			),
		  		],
		  	),
		  ),
		);
	}

	void nav(int index) {
		setState(() {
			_selectedIndex = index;
		});
	}
}
