import 'package:flutter/material.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/questionaire/presentation/widgets/questionnaire_text_widgets.dart';

class CorrectIncorrectOption extends StatelessWidget {
  final String answer;
  final bool isSelected;
  final VoidCallback onSelect;

  const CorrectIncorrectOption(
      {super.key,
      required this.answer,
      this.isSelected = false,
      required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        width: double.infinity,
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
                color: isSelected
                    ? AppColors.assessmentCardTitleColor
                    : AppColors.disabledColor)),
        child: Align(
          alignment: Alignment.centerLeft,
          child: AnswerTextWidget(title: answer),
        ),
      ),
    );
  }
}
