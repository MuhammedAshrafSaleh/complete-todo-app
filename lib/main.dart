import 'package:complete_todo_app/services/theme_services.dart';
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
    return GetMaterialApp(
      theme: Themes.light,
      darkTheme: Themes.dark,
      // Create Object From Our ThemeServices
      themeMode: ThemeServices().theme,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: NotificationScreen(),
      initialRoute: AppRoute.homeScreenRoute,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
