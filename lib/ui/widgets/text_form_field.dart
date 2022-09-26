import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utilities/theme.dart';

Widget buildTextFormField({
  required BuildContext context,
  required String hint,
  required TextEditingController? controller,
  IconData? icon,
}) {
  return Expanded(
    child: TextFormField(
      controller: controller,
      autofocus: false,
      cursorColor: Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
      style: Themes.subtitleStyle,
      readOnly: icon != null,
      decoration: InputDecoration(
        hintText: hint,
        helperStyle: Themes.subtitleStyle,
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
        suffixIcon: TextButton(
          onPressed: () {},
          child: Icon(
            icon,
          ),
        ),
      ),
    ),
  );
}
