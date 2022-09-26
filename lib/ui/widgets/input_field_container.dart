import 'package:flutter/material.dart';

import '../../utilities/theme.dart';
import 'text_form_field.dart';

class InputFieldContainer extends StatelessWidget {
  const InputFieldContainer({
    Key? key,
    required this.title,
    required this.hint,
    this.controller,
  }) : super(key: key);
  final String title;
  final String hint;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Themes.titleStyle,
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
                icon: Icons.email,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
