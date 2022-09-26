import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utilities/theme.dart';

Widget buildTextFormField({
  required BuildContext context,
  required String hint,
  required TextEditingController? controller,
  Widget? widget,
}) {
  return Expanded(
    child: TextFormField(
      controller: controller,
      autofocus: false,
      cursorColor: Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
      style: AppThemes.bodyText1Style,
      readOnly: widget != null,
      decoration: InputDecoration(
        hintText: hint,
        helperStyle: AppThemes.bodyText1Style,
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: widget,
      ),
    ),
  );
}
