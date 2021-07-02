import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  final String? title;
  final String? banner;
  final List<Widget> children;
  final List<BottomNavigationBarItem> navItems;
  final Axis scrollDirection;

  const ScaffoldPage({
    Key? key,
    this.title,
    this.banner,
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
          if (title != null || banner != null) _createBanner(title, banner, theme),
          SliverList(
            delegate: SliverChildListDelegate(
              children,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: navItems,
      ),
    );
  }

  SliverAppBar _createBanner(title, banner, ThemeData theme) {
    final titleColor = (banner == null ? theme.colorScheme.primary : Colors.white);
    final titleStyle = theme.textTheme.headline2!.copyWith(color: titleColor);
    return SliverAppBar(
      title: (title == null ? null : Text(title!, style: titleStyle)),
      backgroundColor: Colors.transparent,
      expandedHeight: (banner != null ? 150.0 : (title != null ? 30.0 : 0.0)),
      flexibleSpace: (banner == null
          ? null
          : FlexibleSpaceBar(
              background: Image.asset(banner, fit: BoxFit.fitWidth),
            )),
    );
  }
}
