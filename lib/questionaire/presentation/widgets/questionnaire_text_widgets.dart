import 'package:flutter/material.dart';
import 'package:measureap/core/extensions/string_extension.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/styles_manager.dart';
import 'package:measureap/questionaire/presentation/enums/question_type_enums.dart';
import 'package:measureap/questionaire/presentation/widgets/text_overlay_widget.dart';

class TitleTextWidget extends StatelessWidget {
  final String title;
  const TitleTextWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: getBoldStyle(color: AppColors.titleTextColor, fontSize: 24),
    );
  }
}

class AnswerTextWidget extends StatelessWidget {
  final String title;
  const AnswerTextWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title.capitalizeFirst(),
      style: getBoldStyle(color: AppColors.titleTextColor, fontSize: 18),
    );
  }
}

class IdentificationQuestionAnswerTextWidget extends StatelessWidget {
  final String title;
  const IdentificationQuestionAnswerTextWidget(
      {super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title.capitalizeFirst(),
      style: getBoldStyle(color: AppColors.titleTextColor, fontSize: 16),
    );
  }
}

class DescriptionTextWidget extends StatelessWidget {
  final String description;
  final TextAlign textAlign;
  // final bool overFlow;
  final QuestionType? questionType;
  const DescriptionTextWidget({
    super.key,
    required this.description,
    this.textAlign = TextAlign.left,
    this.questionType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          description,
          maxLines: questionType != QuestionType.recall ? 2 : 200,
          style:
              getMediumtyle(color: AppColors.subtitleTextColor, fontSize: 14),
          textAlign: textAlign,
          overflow: description.length >= 150 ? TextOverflow.ellipsis : null,
        ),
        questionType != QuestionType.recall
            ? GestureDetector(
                onTap: () => showTextOverlayWidget(context, description),
                child: Text(
                  "Show All",
                  style:
                      getBoldStyle(color: AppColors.assessmentCardTitleColor),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}

class TextOverlayTextWidget extends StatelessWidget {
  final String description;
  final TextAlign textAlign;
  const TextOverlayTextWidget({
    super.key,
    required this.description,
    this.textAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: getMediumtyle(color: AppColors.subtitleTextColor, fontSize: 14),
      textAlign: textAlign,
    );
  }
}
