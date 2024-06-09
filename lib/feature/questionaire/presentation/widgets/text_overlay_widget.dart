import 'package:flutter/material.dart';
import 'package:measureap/feature/questionaire/presentation/widgets/questionnaire_text_widgets.dart';

import '../../../../core/theme/app_colors.dart';
import '../enums/question_type_enums.dart';

Future<dynamic> showTextOverlayWidget(BuildContext context, String content) {
  return showAdaptiveDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) => Center(
      child: Wrap(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.disabledColor),
            ),
            child: DescriptionTextWidget(
              description: content,
              questionType: QuestionType.recall,
            ),
          )
        ],
      ),
    ),
  );
}
