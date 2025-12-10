import 'package:flutter/material.dart';

class PlaceHolderContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? color;

  const PlaceHolderContainer({
    super.key,
    this.height,
    this.width,
    this.borderRadius,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 2),
        color: theme.hoverColor,
      ),
    );
  }
}