import 'package:flutter/material.dart';

class ScaffoldTag extends StatelessWidget {
  final IconData icon;
  final String text;

  const ScaffoldTag({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = Colors.grey.shade500;
    return Container(
      child: Row(
        children: [
          Icon(
            icon,
            size: 15,
            color: color,
          ),
          SizedBox(width: 5),
          Text(
            text,
            style: theme.textTheme.bodyText1!.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
