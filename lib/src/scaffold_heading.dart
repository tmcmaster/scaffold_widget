import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldHeading extends StatelessWidget {
  final String text;
  final String? icon;
  final String? actionText;
  final Function? action;

  const ScaffoldHeading({
    Key? key,
    required this.text,
    this.icon,
    this.actionText,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme.primary;
    final textStyle = theme.textTheme.headline3!.copyWith(color: color);
    final textActionStyle = theme.textTheme.headline4!.copyWith(color: color);

    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                textAlign: TextAlign.left,
                style: textStyle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (actionText != null)
                Text(
                  actionText ?? '',
                  textAlign: TextAlign.left,
                  style: textActionStyle,
                ),
            ],
          )
        ],
      ),
    );
  }
}
