import 'package:complete_todo_app/utilities/router.dart';
import 'package:complete_todo_app/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: NotificationScreen(),
      initialRoute: AppRoute.notificationScreenRoute,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
