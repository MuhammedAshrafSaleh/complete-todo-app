import 'package:flutter/material.dart';

import '../../utilities/theme.dart';

Widget buildDropDownList({
  required VoidCallback? function(dynamic? value),
  required List<dynamic> items,
}) {
  return DropdownButton(
    borderRadius: BorderRadius.circular(10),
    onChanged: function,
    items: items
        .map(
          (value) => DropdownMenuItem(
            value: value,
            child: Text(
              value.toString(),
              style: AppThemes.bodyText1Style,
            ),
          ),
        )
        .toList(),
    icon: const Icon(Icons.keyboard_arrow_down_sharp),
    underline: Container(height: 0),
  );
}
