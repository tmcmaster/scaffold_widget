import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldPanelScrolling extends StatelessWidget {
  final double childWidth;
  final double childHeight;
  final List<Widget> children;

  const ScaffoldPanelScrolling({
    Key? key,
    this.childWidth = 100,
    this.childHeight = 100,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: childHeight,
      child: Scaffold(
        /// try removing this.
        body: CustomScrollView(
          scrollDirection: Axis.horizontal,
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                children
                    .map((e) => SizedBox(
                          height: childHeight,
                          width: childWidth,
                          child: e,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
