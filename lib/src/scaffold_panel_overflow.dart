import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldRowOverflow extends StatelessWidget {
  final double size;
  final List<Widget> children;

  const ScaffoldRowOverflow({
    Key? key,
    this.size = 100,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Row(
              children: children
                  .map((e) => SizedBox(
                        width: size,
                        height: size,
                        child: e,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
