import 'package:flutter/material.dart';
import 'package:measureap/questionaire/presentation/widgets/multiple_correct_incorrect_option.dart';
import 'package:measureap/questionaire/presentation/widgets/questionnaire_text_widgets.dart';

import '../../../core/widgets/gaps.dart';
import '../../domain/entity/question.dart';

class MultipleCorrectIncorrectPageview extends StatelessWidget {
  final Question question;
  const MultipleCorrectIncorrectPageview({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    final options = [
      'Correct',
      'Incorrect',
      'Both',
    ];

    return Column(
      children: [
        const ExtraLargeGap(),
        TitleTextWidget(
          title: question.text!,
        ),
        const MediumGap(),
        DescriptionTextWidget(
          description: question.description!,
          textAlign: TextAlign.center,
        ),
        // GestureDetector(
        //   onTap: () {
        //     showTextOverlayWidget(context, description);
        //   },
        //   child: Text(
        //     "Show All",
        //     style: getBoldStyle(
        //         color: AppColors.assessmentCardTitleColor, fontSize: 14),
        //   ),
        // ),
        const LargeGap(),
        ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (ctx, index) => Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: MultipleCorrectIncorrectOption(
              answer: question.options![index],
            ),
          ),
          itemCount: question.options!.length,
        ),
      ],
    );
  }
}
