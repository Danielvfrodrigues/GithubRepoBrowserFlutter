import 'package:flutter/material.dart';

class RepoSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Icon icon;
  final void Function() onPressed;

  const RepoSearchAppBar({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Github Repositories'),
      actions: [IconButton(icon: icon, onPressed: onPressed)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
