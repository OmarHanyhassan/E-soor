import 'package:flutter/material.dart';

class Constants extends InheritedWidget {
  static Constants of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Constants>();

  Constants({Widget child, Key key}) : super(key: key, child: child);

  static final ThemeData kDarkTheme = ThemeData.dark().copyWith(
    accentColor: Colors.blue[800],
  );
  static final ThemeData kLightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.deepOrange[600],
  );

  @override
  bool updateShouldNotify(Constants oldWidget) => false;
}
