import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_widget/scaffold_widget.dart';
import 'package:scaffold_widget/src/scaffold_tag.dart';

import '../shared/fruit.dart';
import '../shared/navigation.dart';

class FruitHome extends StatelessWidget {
  const FruitHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      title: 'Fruit App',
      banner: 'assets/images/mixed_fruit.jpg',
      scrollDirection: Axis.vertical,
      navItems: Navigation.items,
      children: [
        ScaffoldHeading(text: 'Top Rated Fruit', actionText: 'See all >'),
        ScaffoldPanelScrolling(
          childHeight: 350,
          childWidth: 250,
          children: Fruit.rated.map((f) {
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
        ScaffoldHeading(text: 'Trending Fruit', actionText: 'See all >'),
        ScaffoldPanelScrolling(
          childHeight: 350,
          childWidth: 250,
          children: Fruit.trending.map((f) {
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
        ScaffoldHeading(text: 'Fruit Details', actionText: 'See all >'),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 135, 0),
          child: ScaffoldRowOverflow(
              size: 150,
              children: Fruit.details
                  .map((f) => ScaffoldTile(label: '$f', image: 'assets/icons/$f.jpg', onPressed: () {}))
                  .toList()),
        ),
        ScaffoldHeading(text: 'Favourite Fruit', actionText: 'See all >'),
        Container(
          margin: EdgeInsets.fromLTRB(35, 0, 135, 0),
          child: ScaffoldRowOverflow(
              size: 70,
              children: Fruit.favourites
                  .map((f) => ScaffoldTile(label: '$f', image: 'assets/icons/$f.jpg', onPressed: () {}))
                  .toList()),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
