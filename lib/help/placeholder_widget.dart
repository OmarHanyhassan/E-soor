import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
    final Widget page;

    PlaceholderWidget(this.page);

    @override
    Widget build(BuildContext context) {
        return page;
    }
}