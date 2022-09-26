// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../utilities/theme.dart';
import 'text_form_field_widget.dart';

class InputFieldContainer extends StatelessWidget {
  const InputFieldContainer({
    Key? key,
    required this.title,
    required this.hint,
    this.controller,
    this.widget,
  }) : super(key: key);
  final String title;
  final String hint;
  final TextEditingController? controller;
  // final IconData? icon;
  // final VoidCallback? onPressed;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppThemes.titleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              buildTextFormField(
                context: context,
                hint: hint,
                controller: controller,
                widget: widget,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
