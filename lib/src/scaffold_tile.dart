import 'package:flutter/material.dart';

class ScaffoldTile extends StatelessWidget {
  final String image;
  final String label;
  final Function onPressed;
  const ScaffoldTile({
    Key? key,
    required this.image,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = constraints.maxWidth * 0.6;
        final height = constraints.maxHeight * 0.6;
        return InkWell(
          onTap: () {
            print('Pressed');
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(image, width: width, height: height),
                Text(
                  label,
                  style: theme.textTheme.headline3,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
