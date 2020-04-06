import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

BorderRadiusGeometry radius = BorderRadius.only(
  topLeft: Radius.circular(25.0),
  topRight: Radius.circular(25.0),
);

class SlidingPanel extends StatefulWidget {
  @override
  _SlidingPanelState createState() => _SlidingPanelState();
}

class _SlidingPanelState extends State<SlidingPanel> {
  
  static int price = 75;
  int total = 2 * price;

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      borderRadius: radius,
      maxHeight: 300,
      backdropEnabled: true,
      minHeight: 30,
      controller: PanelController(),
      panel: Container(
        decoration: BoxDecoration(
          color: ThemeData.dark().primaryColor,
          borderRadius: radius,
        ),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                "Your Order",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.delete),
              ),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text(
                "David Copperfield",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                "By. Charles Dickens",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                "\$" + "$price",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text(
                "Great Expectations",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                "By. Charles Dickens",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                "\$" + "$price",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Total:",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              trailing: Text(
                "\$" + "$total",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(75, 0, 75, 2),
              child: RaisedButton(
                child: Text("Order"),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(50.0),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      collapsed: Container(
        child: Center(
          child: Text("Cart"),
        ),
        decoration: BoxDecoration(
          borderRadius: radius,
          color: Colors.green,
        ),
      ),
    );
  }
}
