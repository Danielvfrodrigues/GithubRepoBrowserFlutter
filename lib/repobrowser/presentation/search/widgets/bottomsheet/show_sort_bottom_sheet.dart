import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/sort_order.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/widgets/bottomsheet/sort_bottom_sheet.dart';

Future<void> showSortBottomSheet({
  required BuildContext context,
  required SortOrder selected,
  required ValueChanged<SortOrder> onSelected,
}) {
  return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black54,
      isScrollControlled: true,

      builder: (_) => SortBottomSheet(
          selected: selected,
          onSelected: (order) {
            Navigator.of(context).pop();
            onSelected(order);
          }
      ),
  );
}