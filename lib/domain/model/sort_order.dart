import 'package:flutter/material.dart';

enum SortOrder { stars, forks, updatedAt }

extension SortOrderLabel on SortOrder {
  String get label {
    switch (this) {
      case SortOrder.stars:
        return 'STARS';
      case SortOrder.forks:
        return 'FORKS';
      case SortOrder.updatedAt:
        return 'UPDATED AT';
    }
  }

  IconData get icon {
    switch (this) {
      case SortOrder.stars:
        return Icons.star_border;
      case SortOrder.forks:
        return Icons.call_split;
      case SortOrder.updatedAt:
        return Icons.call_split;
    }
  }
}
