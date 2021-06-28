import 'package:flutter_workbench/flutter_workbench.dart';

import 'shared/shared_style.dart';
import 'widgets/fruit_home.dart';

void main() {
  FlutterWorkbench.runAppContainer(
    title: 'Fruit Home',
    styles: SharedStyle.themes,
    screenshot: true,
    child: FruitHome(),
  );
}
