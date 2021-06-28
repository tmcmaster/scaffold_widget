import 'package:flutter/material.dart';
import 'package:scaffold_widget/src/scaffold_tag.dart';

class ScaffoldCardHorizontal extends StatelessWidget {
  final String? image;
  final String? heading;
  final String? description;
  final String? actionText;
  final Function? onPressed;
  final List<ScaffoldTag> tags;
  const ScaffoldCardHorizontal({
    Key? key,
    this.image,
    this.heading,
    this.description,
    this.tags = const [],
    this.actionText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Container(
        // decoration: BoxDecoration(color: Colors.lightBlue),
        child: Row(
          children: [
            if (image != null)
              SizedBox(
                height: double.infinity,
                width: 100,
                child: FittedBox(
                  clipBehavior: Clip.hardEdge,
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.fitHeight,
                  child: Image.asset(
                    image!,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            Container(
              width: 150,
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Column(
                children: [
                  if (heading != null)
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          heading!,
                          style: theme.textTheme.headline3,
                        ),
                      ),
                    ),
                  Expanded(
                    child: (description == null ? Text('') : Text(description!, style: theme.textTheme.bodyText1)),
                  ),
                  if (tags.isNotEmpty)
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: tags,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
