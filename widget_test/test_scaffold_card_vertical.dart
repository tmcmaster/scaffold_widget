import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';
import 'package:scaffold_widget/src/scaffold_tag.dart';

import 'shared/shared_style.dart';

void main() {
  final description = faker.lorem.sentences(2);
  FlutterWorkbench.runAppWidgetTester(
    title: 'Scaffold Card Vertical',
    styles: SharedStyle.themes,
    options: WidgetTesterOptions(columns: 1),
    children: [
      ScaffoldCardVertical(
        heading: 'Bananas',
        image: 'assets/images/banana.jpg',
        description: description.join(" "),
        tags: [
          ScaffoldTag(icon: Icons.attach_money, text: 'Medium'),
          ScaffoldTag(icon: Icons.thumb_up, text: '32k'),
          ScaffoldTag(icon: Icons.favorite, text: '500+'),
        ],
      ),
    ],
  );
}
