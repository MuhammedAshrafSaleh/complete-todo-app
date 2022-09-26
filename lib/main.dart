import 'package:complete_todo_app/services/theme_services.dart';
import 'package:complete_todo_app/ui/pages/add_task_page.dart';
import 'package:complete_todo_app/ui/pages/home_page.dart';
import 'package:complete_todo_app/ui/pages/notification_screen.dart';
import 'package:complete_todo_app/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utilities/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      // Create Object From Our ThemeServices
      themeMode: ThemeMode.dark,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: NotificationScreen(),
      initialRoute: AppRoute.addTaskScreenRoute,
      defaultTransition: Transition.leftToRightWithFade,
      getPages: [
        GetPage(
          name: AppRoute.homeScreenRoute,
          page: () => const HomePage(),
        ),
        GetPage(
          name: AppRoute.notificationScreenRoute,
          page: () => const NotificationScreen(
            load: 'a|a|a',
          ),
        ),
        GetPage(
          name: AppRoute.addTaskScreenRoute,
          page: () => const AddTaskPage(),
        ),
      ],
    );
  }
}
