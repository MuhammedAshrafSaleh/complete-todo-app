import 'package:complete_todo_app/models/task.dart';
import 'package:complete_todo_app/services/notification_services.dart';
import 'package:complete_todo_app/services/theme_services.dart';
import 'package:complete_todo_app/utilities/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_appbar_widget.dart';
import '../widgets/date_picker_widget.dart';
import '../widgets/no_task_widget.dart';
import '../widgets/task_bar_widget.dart';
import '../widgets/task_tile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late NotifyHelper notifyHelper;
  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initailzeNotification();
    notifyHelper.requestAndroidPermession();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: customAppBar(
        context,
        onPressed: () {
          ThemeServices().switchTheme();
          notifyHelper.displayNotification(
            title: "Theme Changed",
            body: "Already Changed And You Not Untill Now!",
          );
          notifyHelper.scheduleNotification();
        },
        icon: Get.isDarkMode
            ? Icons.wb_sunny_outlined
            : Icons.nightlight_outlined,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            buildTaskBar(),
            const BuildDatePicker(),
            TaskTile(
              task: Task(
                color: 1,
                endTime: "07:00 PM",
                startTime: "06:00 PM",
                title: "Go To Gym",
                note: "Please Go To The Gym",
                isCompleted: 0,
              ),
            ),
            TaskTile(
              task: Task(
                color: 0,
                endTime: "07:00 PM",
                startTime: "06:00 PM",
                title: "Go To Gym",
                note: "Please Go To The Gym",
                isCompleted: 1,
              ),
            ),
            // Expanded(
            //   child: noTask(),
            // ),
          ],
        ),
      ),
    );
  }
}
