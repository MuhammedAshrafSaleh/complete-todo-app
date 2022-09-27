import 'package:complete_todo_app/utilities/size_config.dart';
import 'package:complete_todo_app/utilities/theme.dart';
import 'package:flutter/material.dart';

import '../../models/task.dart';
import 'divider_widget.dart';

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  TaskTile({Key? key, required this.task}) : super(key: key);
  final Task task;
  List<Color> circlesColors = [
    AppColor.primaryClr,
    AppColor.orangeClr,
    AppColor.pinkClr
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: SizeConfig.orientation == Orientation.landscape
            ? SizeConfig.screenWidth / 2
            : SizeConfig.screenWidth,
        margin:
            EdgeInsets.symmetric(vertical: getProportionateScreenHeight(12)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: circlesColors[task.color!],
        ),
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title!,
                      style: AppThemes.subHeadingStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: AppColor.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${task.startTime} - ${task.endTime}",
                          style: AppThemes.titleStyle,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      task.note!,
                      style: AppThemes.bodyText1Style.copyWith(
                        color: AppColor.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildDivider(),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                task.isCompleted == 1 ? "COMPLETED" : "TODO",
                style: AppThemes.subtitleStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
