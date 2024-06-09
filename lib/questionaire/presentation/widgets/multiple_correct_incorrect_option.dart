import 'package:flutter/material.dart';
import 'package:measureap/questionaire/presentation/widgets/questionnaire_text_widgets.dart';
import '../../../core/theme/app_colors.dart';

class MultipleCorrectIncorrectOption extends StatelessWidget {
  final String answer;
  final bool isSelected;
  final VoidCallback onSelect;
  const MultipleCorrectIncorrectOption({
    super.key,
    required this.answer,
    this.isSelected = false,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onSelect, child:  Container(
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
        child: Row(children: [
          isSelected
              ? Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.assessmentCardBackgroundColor,
            ),
            child: const Center(
              child: Icon(
                Icons.check,
                color: AppColors.whiteColor,
              ),
            ),
          )
              : Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.disabledColor,
                width: 2,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          AnswerTextWidget(title: answer)
        ]),
      ),
    ),);
  }
}
