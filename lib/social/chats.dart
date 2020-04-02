import 'package:E_Soor/services/message_model.dart';
import 'package:flutter/material.dart';
import 'package:bottomreveal/bottomreveal.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final BottomRevealController _menuController = BottomRevealController();
  static DateTime dateTime = new DateTime.now().toLocal();
  String time = "${dateTime.hour}:${dateTime.minute}";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomReveal(
        frontColor: Colors.blue,
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
                      size: MediaQuery.of(context).size / 100,
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
            suffixIcon: Icon(Icons.search),
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
        body: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Message chat = chats[index];
                    return Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              NetworkImage(chat.sender.profileImage),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              chat.sender.username,
                            ),
                            Text(
                              chat.text,
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
