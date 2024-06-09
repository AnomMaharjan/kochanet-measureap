import 'package:flutter/material.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/styles_manager.dart';

class CustomDropDown extends StatelessWidget {
  final String hintText;
  final List<String> options;
  final String? selectedOption;
  final Function(String?) onChanged;
  const CustomDropDown(
      {super.key,
      required this.hintText,
      required this.options,
      this.selectedOption,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: options.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      borderRadius: BorderRadius.circular(30),
      value: selectedOption,
      hint: Text(
        hintText,
        style: getMediumtyle(color: AppColors.subtitleTextColor, fontSize: 16),
      ),
      onChanged: onChanged,
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        size: 30,
      ),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.disabledColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.disabledColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.disabledColor),
        ),
      ),
    );
  }
}
