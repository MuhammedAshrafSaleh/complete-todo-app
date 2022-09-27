import 'package:complete_todo_app/utilities/theme.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

class BuildDatePicker extends StatefulWidget {
  const BuildDatePicker({Key? key}) : super(key: key);

  @override
  State<BuildDatePicker> createState() => _BuildDatePickerState();
}

class _BuildDatePickerState extends State<BuildDatePicker> {
  DateTime? selectedDate;
  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return DatePicker(
      DateTime.now(),
      width: 70,
      height: 100,
      selectedTextColor: AppColor.white,
      selectionColor: AppColor.primaryClr,
      // initialSelectedDate: DateTime.now().add(const Duration(days: 1)),
      initialSelectedDate: DateTime.now(),
      dayTextStyle: AppThemes.bodyText1Style.copyWith(color: Colors.grey),
      dateTextStyle: AppThemes.headingStyle.copyWith(color: Colors.grey),
      monthTextStyle: AppThemes.bodyText1Style.copyWith(color: Colors.grey),
      onDateChange: (date) {
        setState(() {
          selectedDate = date;
        });
      },
    );
  }
}
