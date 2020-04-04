import 'package:flutter/material.dart';


class FriendRequests extends StatefulWidget {
	@override
	_FriendRequestsState createState() => _FriendRequestsState();
}

class _FriendRequestsState extends State<FriendRequests> {
	
	int friendsNum = 20;
	
	@override
	Widget build(BuildContext context) {
		Size size = MediaQuery.of(context).size;
		return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: ExactAssetImage("allAssets/images/bg.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView.separated(
          itemBuilder: (context, position) {
            return Card(
              elevation: 10,
              child: ListTile(
                isThreeLine: true,
                leading: SizedBox(
                  child: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: ExactAssetImage("allAssets/images/mmm.jpg"),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("Acc Name"),
                    SizedBox(width: size.width*0.2,),
                    Text(
                      "Verification",
                      style: TextStyle(
                        color: Colors.red
                      ),
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("$friendsNum" + " mutual friend"),
                          SizedBox(
                            width: size.width*0.25,
                          ),
                          Text("Time"),
                        ],
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            color: Colors.green,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.done,),
                                Text("Accept"),
                              ],
                            ),
                            onPressed: () {},
                          ),
                                                      SizedBox(width: size.width*0.01,),
                          RaisedButton(
                            color: Colors.red,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.close,),
                                Text("Decline"),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, position) {
            return SizedBox(height: 20,);
          },
          itemCount: 21,
        ),
      ),
    );
	}
}
