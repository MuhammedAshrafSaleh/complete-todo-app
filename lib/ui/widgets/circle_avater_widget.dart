import 'package:flutter/material.dart';

import '../../utilities/theme.dart';

Widget circleAvaterWidget({
  required Color color,
  required VoidCallback onTap,
  isClicked = true,
}) {
  return InkWell(
    borderRadius: BorderRadius.circular(12),
    onTap: onTap,
    child: CircleAvatar(
      backgroundColor: color,
      radius: 14,
      child: isClicked
          ? const Icon(
              Icons.done,
              color: AppColor.white,
              size: 14,
            )
          : Container(),
    ),
  );
}
