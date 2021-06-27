import 'package:flutter/material.dart';
import 'package:scaffold_widget/src/scaffold_tag.dart';

class ScaffoldCardVertical extends StatelessWidget {
  final String? image;
  final String? heading;
  final String? description;
  final String? actionText;
  final Function? onPressed;
  final List<ScaffoldTag> tags;
  const ScaffoldCardVertical({
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
        child: Column(
          children: [
            if (image != null)
              SizedBox(
                width: double.infinity,
                height: 150,
                child: FittedBox(
                  clipBehavior: Clip.hardEdge,
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.fitWidth,
                  child: Image.asset(
                    image!,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            Container(
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
                  if (description != null) Text(description!, style: theme.textTheme.bodyText1),
                  if (tags.isNotEmpty)
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
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
