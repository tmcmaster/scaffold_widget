import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';
import 'package:scaffold_widget/src/scaffold_tag.dart';

import 'shared/shared_style.dart';

void main() {
  const fruit = ['apple', 'banana', 'cherries', 'coconut', 'kiwi', 'orange', 'pawpaw', 'pear'];
  final favourites = fruit.getRange(0, 3).toList();
  final trending = fruit.reversed.toList().getRange(0, 5).toList();
  final rated = fruit.toList().getRange(0, 5).toList();

  FlutterWorkbench.runAppContainer(
    title: 'Scaffold Page',
    styles: SharedStyle.themes,
    child: ScaffoldPage(
      title: 'Fruit App',
      banner: 'assets/images/mixed_fruit.jpg',
      scrollDirection: Axis.vertical,
      navItems: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        )
      ],
      children: [
        ScaffoldHeading(text: 'Top Rated Fruit', actionText: 'See all >'),
        ScaffoldPanelOverflow(children: [
          ScaffoldPanelScrolling(
            childHeight: 350,
            childWidth: 250,
            children: rated.map((f) {
              return ScaffoldCardVertical(
                heading: f,
                description: 'Description',
                image: 'assets/images/$f.jpg',
                tags: [
                  ScaffoldTag(icon: Icons.attach_money, text: 'Medium'),
                  ScaffoldTag(icon: Icons.thumb_up, text: '32k'),
                  ScaffoldTag(icon: Icons.favorite, text: '500+'),
                ],
              );
            }).toList(),
          ),
        ]),
        ScaffoldHeading(text: 'Trending Fruit', actionText: 'See all >'),
        ScaffoldPanelOverflow(children: [
          ScaffoldPanelScrolling(
            childHeight: 350,
            childWidth: 250,
            children: trending.map((f) {
              return ScaffoldCardVertical(
                heading: f,
                description: 'Description',
                image: 'assets/images/$f.jpg',
                tags: [
                  ScaffoldTag(icon: Icons.attach_money, text: 'Medium'),
                  ScaffoldTag(icon: Icons.thumb_up, text: '32k'),
                  ScaffoldTag(icon: Icons.favorite, text: '500+'),
                ],
              );
            }).toList(),
          ),
        ]),
        ScaffoldHeading(text: 'Fruit Details', actionText: 'See all >'),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 135, 0),
          child: ScaffoldRowOverflow(
              size: 150,
              children: favourites
                  .map((f) => ScaffoldTile(label: '$f', image: 'assets/icons/$f.jpg', onPressed: () {}))
                  .toList()),
        ),
        ScaffoldHeading(text: 'Favourite Fruit', actionText: 'See all >'),
        Container(
          margin: EdgeInsets.fromLTRB(35, 0, 135, 0),
          child: ScaffoldRowOverflow(
              size: 70,
              children: fruit.reversed
                  .map((f) => ScaffoldTile(label: '$f', image: 'assets/icons/$f.jpg', onPressed: () {}))
                  .toList()),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    ),
  );
}
