import 'package:complete_todo_app/ui/theme.dart';
import 'package:flutter/material.dart';

Widget customButton({
  required String label,
  required VoidCallback function,
}) {
  return GestureDetector(
    onTap: function,
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.primaryClr,
      ),
      width: 100,
      height: 45,
      child: Text(
        label,
      ),
    ),
  );
}
