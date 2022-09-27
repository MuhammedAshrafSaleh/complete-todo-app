import 'package:complete_todo_app/ui/widgets/button_widget.dart';
import 'package:complete_todo_app/utilities/routes.dart';
import 'package:complete_todo_app/utilities/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controllers/task_controller.dart';

Widget buildTaskBar() {
  final TaskController _taskController = Get.put(TaskController());
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateFormat("yMMMMd").format(DateTime.now()),
            style: AppThemes.subHeadingStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Today",
            style: AppThemes.headingStyle,
          ),
        ],
      ),
      const Spacer(),
      customButton(
        label: "+  Add task",
        function: () async {
          await Get.toNamed(AppRoute.addTaskScreenRoute);
          _taskController.getData();
        },
      ),
    ],
  );
}
