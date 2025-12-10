import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final String text;

  const IconText({
    super.key,
    required this.icon,
    this.text = "",
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: iconColor),
        const SizedBox(height: 4),
        Text(text),
      ],
    );
  }
}
