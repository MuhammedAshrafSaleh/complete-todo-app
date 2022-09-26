import 'package:complete_todo_app/controllers/task_controller.dart';
import 'package:complete_todo_app/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../utilities/theme.dart';
import '../widgets/circle_avater_widget.dart';
import '../widgets/dropdown_button_widget.dart';
import '../widgets/input_field_container_widget.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final TaskController _taskController = Get.put(TaskController());
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  final DateTime _selectedDate = DateTime.now();
  final String _startedTime =
      DateFormat("hh:mm:a").format((DateTime.now())).toString();
  final String _endTime = DateFormat("hh:mm:a")
      .format(
        DateTime.now().add(
          const Duration(minutes: 60),
        ),
      )
      .toString();
  int _selectedReminder = 5;
  List<int> remindList = [5, 10, 15, 20, 30];
  String _selectedRepeted = "None";
  List<String> repeatedList = [
    "None",
    "Daily",
    "Weekly",
    "Monthly",
  ];
  int _selectedColor = 0;
  List<Color> circlesColors = [
    AppColor.primaryClr,
    AppColor.orangeClr,
    AppColor.pinkClr
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Add Task",
                style: AppThemes.headingStyle,
              ),
              InputFieldContainer(
                title: "Title",
                hint: "Enter task title ",
                controller: _titleController,
              ),
              InputFieldContainer(
                title: "Notes",
                hint: "Enter some notes",
                controller: _noteController,
              ),
              InputFieldContainer(
                title: "Date",
                hint: DateFormat.yMd().format(_selectedDate),
              ),
              Row(
                children: [
                  Expanded(
                    child: InputFieldContainer(
                      title: "Start time",
                      hint: _startedTime,
                      widget: TextButton(
                        onPressed: () {},
                        child: const Icon(Icons.timer_sharp),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InputFieldContainer(
                      title: "End time",
                      hint: _endTime,
                      widget: TextButton(
                        onPressed: () {},
                        child: const Icon(Icons.timer_sharp),
                      ),
                    ),
                  ),
                ],
              ),
              InputFieldContainer(
                title: "Reminder",
                hint: "$_selectedReminder  minutes early",
                widget: buildDropDownList(
                  function: (dynamic value) {
                    setState(() {
                      _selectedReminder = value;
                    });
                    return null;
                  },
                  items: remindList,
                ),
              ),
              InputFieldContainer(
                title: "Repeat",
                hint: _selectedRepeted,
                widget: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: buildDropDownList(
                    function: (dynamic value) {
                      setState(() {
                        _selectedRepeted = value;
                      });
                      return null;
                    },
                    items: repeatedList,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      'Color',
                      style: AppThemes.titleStyle,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Row(
                          children:
                              List.generate(circlesColors.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: circleAvaterWidget(
                                color: circlesColors[index],
                                onTap: () {
                                  setState(() {
                                    _selectedColor = index;
                                  });
                                },
                                isClicked: _selectedColor == index,
                              ),
                            );
                          }),
                        ),
                        const Spacer(),
                        customButton(label: "Create Task", function: () {}),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
