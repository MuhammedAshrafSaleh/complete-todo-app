import 'package:complete_todo_app/services/theme_services.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              ThemeServices().switchTheme();
            },
            icon: const Icon(Icons.brightness_4),
          ),
        ],
      ),
      body: Center(
        child: customButton(
          function: () {},
          label: 'Add Task',
        ),
      ),
    );
  }
}
