import 'package:flutter_utils/flutter_utils.dart';

extension FocusTraversalGroupExtension on FocusTraversalGroup {
  focusFirst(FocusNode node) {
    final policy = FocusTraversalGroup.of(node.context!);
    final firstNode =
        // ignore: invalid_use_of_protected_member
        policy.sortDescendants(node.traversalChildren, node).first;
    firstNode.requestFocus();
  }
}
