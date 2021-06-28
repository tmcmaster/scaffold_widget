import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_widget/scaffold_widget.dart';
import 'package:scaffold_widget/src/scaffold_card_horizontal.dart';
import 'package:scaffold_widget/src/scaffold_tag.dart';

import '../shared/navigation.dart';

class FruitList extends StatelessWidget {
  final String title;
  final List<String> fruit;
  const FruitList({
    Key? key,
    required this.title,
    required this.fruit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      title: title,
      scrollDirection: Axis.vertical,
      navItems: Navigation.items,
      children: [
        ...fruit
            .map((f) => Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: SizedBox(
                    height: 200,
                    width: 300,
                    child: ScaffoldCardHorizontal(
                      heading: f,
                      description: faker.lorem.sentences(2).join(' '),
                      image: 'assets/images/$f.jpg',
                      tags: [
                        ScaffoldTag(icon: Icons.thumb_up, text: '32k'),
                        ScaffoldTag(icon: Icons.favorite, text: '500+'),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ],
    );
  }
}
