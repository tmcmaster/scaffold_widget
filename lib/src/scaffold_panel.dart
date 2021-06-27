import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldPanelOverflow extends StatelessWidget {
  final List<Widget> children;

  const ScaffoldPanelOverflow({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.red),
      padding: EdgeInsets.all(15),
      child: Column(
        children: children,
      ),
    );
  }
}
