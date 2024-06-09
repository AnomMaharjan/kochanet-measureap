import 'package:flutter/material.dart';
import 'package:measureap/core/extensions/color_extenstion.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/styles_manager.dart';

class CustomDropDown extends StatelessWidget {
  final String hintText;
  final List<String> options;
  final String? selectedOption;
  final Function(String?) onChanged;
  final Color? color;

  const CustomDropDown(
      {super.key,
      required this.hintText,
      required this.options,
      this.selectedOption,
      required this.onChanged,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: DropdownButtonFormField<String>(
        items: options.map((String item) {
          return DropdownMenuItem(
            value: item, // Use item as the value for each DropdownMenuItem
            child: Text(item),
          );
        }).toList(),
        iconDisabledColor: AppColors.greyColor,
        borderRadius: BorderRadius.circular(30),
        value: selectedOption,
        hint: Text(
          hintText,
          style: TextStyle(
            color: AppColors.subtitleTextColor,
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
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
      ),
    );
  }
}
