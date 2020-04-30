import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, String name) {
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed: () {},
  );
  Widget removeButton = FlatButton(
    child: Text("Remove"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Confirm removing $name"),
    content:
        Text("Would you like to remove this category and all its content?"),
    actions: [
      cancelButton,
      removeButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
