import 'package:complete_todo_app/services/theme_services.dart';
import 'package:complete_todo_app/utilities/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_appbar_widget.dart';
import '../widgets/task_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: customAppBar(
        context,
        onPressed: () {
          ThemeServices().switchTheme();
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
          ],
        ),
      ),
    );
  }
}
