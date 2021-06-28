import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';

import 'shared/fruit.dart';
import 'shared/shared_style.dart';
import 'widgets/fruit_list.dart';

void main() {
  Widget c;
  FlutterWorkbench.runAppContainer(
    title: 'Favourite Fruit',
    styles: SharedStyle.themes,
    screenshot: true,
    child: FruitList(
      title: 'Favourite Fruit',
      fruit: Fruit.favourites,
    ),
  );
}
