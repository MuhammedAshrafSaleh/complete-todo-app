import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utilities/theme.dart';

AppBar customAppBar(
  context, {
  required VoidCallback onPressed,
  required IconData icon,
  Widget? title,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Theme.of(context).backgroundColor,
    leading: IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Get.isDarkMode ? AppColor.white : AppColor.darkHeaderClr,
      ),
    ),
    actions: const [
      CircleAvatar(
        backgroundImage: AssetImage("assets/images/person.jpeg"),
        radius: 18,
      ),
      SizedBox(
        width: 10,
      ),
    ],
    title: title,
  );
}
