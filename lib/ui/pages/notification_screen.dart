// ignore_for_file: library_private_types_in_public_api

import 'package:complete_todo_app/utilities/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key, required this.load}) : super(key: key);
  final String load;
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late final _load;
  @override
  void initState() {
    super.initState();
    _load = widget.load;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          _load.split('|')[0],
          style: AppThemes.headingStyle,
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  "Hello Ashraf,",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("You've a new reminder"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColor.primaryClr,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      buildColumnTile(
                        icon: Icons.title,
                        title: "Title",
                        description: "Let's Go",
                      ),
                      buildColumnTile(
                        icon: Icons.description,
                        title: "Description",
                        description: "Let's Go",
                      ),
                      buildColumnTile(
                        icon: Icons.date_range,
                        title: "Date",
                        description: "Let's Go",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildColumnTile({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon),
            const SizedBox(
              width: 20,
            ),
            Text(title),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(description),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
