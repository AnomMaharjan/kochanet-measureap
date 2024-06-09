import 'package:flutter/material.dart';
import 'package:measureap/questionaire/presentation/widgets/identification_question_option_card.dart';
import 'package:measureap/questionaire/presentation/widgets/questionnaire_text_widgets.dart';

import '../../../core/widgets/gaps.dart';
import '../../domain/entity/question.dart';

class IdentificationQuestionPageview extends StatelessWidget {
  final Question question;
  const IdentificationQuestionPageview({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LargeGap(),
        TitleTextWidget(title: question.text!),
        const MediumGap(),
        DescriptionTextWidget(
          description: question.description!,
          textAlign: TextAlign.center,
        ),
        const MediumGap(),
        ListView.builder(
          shrinkWrap: true,
          itemCount: question.options!.length,
          itemBuilder: (ctx, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: IdentificationQuestionOptionCard(
              answer: question.options![index],
              imageUrl: question.images![index],
              index: index,
            ),
          ),
        ),
      ],
    );
  }
}
