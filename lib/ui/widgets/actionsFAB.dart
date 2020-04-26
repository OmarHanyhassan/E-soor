import 'package:E_Soor/ui/widgets/categoryBar.dart';
import 'package:flutter/material.dart';

class ActionsFAB extends StatefulWidget {
  final List<Widget> list;
  final void Function() onTap;
  final void Function() onViewMore;
  ActionsFAB(this.list, this.onTap, this.onViewMore);

  @override
  _ActionsFABState createState() => _ActionsFABState();
}

class _ActionsFABState extends State<ActionsFAB> {
  @override
  Widget build(BuildContext context) {
    return actionsFabBuild(
        widget.list, context, widget.onTap, widget.onViewMore);
  }

  Widget actionsFabBuild(List list, context, onTap, onViewMore) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        setState(() {
          list.add(CategoryBar(context, onTap, onViewMore, null));
          print(list.length);
        });
      },
    );
  }
}
