import 'package:complete_todo_app/ui/pages/notification_screen.dart';
import 'package:complete_todo_app/utilities/routes.dart';
import 'package:flutter/material.dart';

import '../ui/pages/home_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoute.homeScreenRoute:
      return MaterialPageRoute(builder: (_) => const HomePage());
    case AppRoute.notificationScreenRoute:
      return MaterialPageRoute(
          builder: (_) => const NotificationScreen(load: "Again1|Gogo|Again2"));
    default:
      return MaterialPageRoute(builder: (_) => const HomePage());
  }
}
