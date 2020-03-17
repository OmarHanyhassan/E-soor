import 'package:flutter/material.dart';
import 'package:bottomreveal/bottomreveal.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final BottomRevealController _menuController = BottomRevealController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomReveal(
        openIcon: Icons.message,
        closeIcon: Icons.message,
        revealWidth: 150,
        revealHeight: 100,
        backColor: Colors.grey.shade900,
        rightContent: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(2, 0, 2, 5),
              child: GestureDetector(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.orange[400],
                    ),
                    SizedBox.fromSize(
                      size: MediaQuery.of(context).size/100,
                    ),
                    Text("Name"),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
        ),
        bottomContent: TextFormField(
          decoration: InputDecoration(
            hintText: "Search your chats..",
            filled: true,
            fillColor: Colors.grey,
            contentPadding: const EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              gapPadding: 8.0,
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        controller: _menuController,
        body: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (_, index) => Card(
            child: ListTile(
              title: Text("Chat No.$index"),
              subtitle: Text("Consider as message"),
            ),
          ),
        ),
      ),
    );
  }
}
