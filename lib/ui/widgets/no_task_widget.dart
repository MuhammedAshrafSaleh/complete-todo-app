import 'package:complete_todo_app/utilities/size_config.dart';
import 'package:complete_todo_app/utilities/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

Widget noTask() {
  return Stack(
    children: [
      SingleChildScrollView(
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: SizeConfig.orientation == Orientation.landscape
              ? Axis.horizontal
              : Axis.vertical,
          children: [
            SizeConfig.orientation == Orientation.landscape
                ? const SizedBox(
                    height: 20,
                  )
                : const SizedBox(
                    height: 180,
                  ),
            SvgPicture.asset(
              "assets/images/task.svg",
              height: 100,
              color: AppColor.primaryClr.withOpacity(0.7),
            ),
            SizeConfig.orientation == Orientation.landscape
                ? const SizedBox(
                    width: 10,
                  )
                : const SizedBox(
                    height: 10,
                  ),
            Text(
              "You don't have any task this day\n Add new task to have a productive day",
              style: AppThemes.titleStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ],
  );
}
