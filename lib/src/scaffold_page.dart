import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  final String title;
  final String banner;
  final List<Widget> children;
  final List<BottomNavigationBarItem> navItems;
  final Axis scrollDirection;

  const ScaffoldPage({
    Key? key,
    required this.title,
    required this.banner,
    required this.children,
    required this.navItems,
    required this.scrollDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: scrollDirection,
        slivers: <Widget>[
          SliverAppBar(
            title: Text(title, style: theme.textTheme.headline2!.copyWith(color: Colors.white)),
            backgroundColor: Colors.transparent,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(banner, fit: BoxFit.fitWidth),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              children,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: navItems,
      ),
    );
  }
}
