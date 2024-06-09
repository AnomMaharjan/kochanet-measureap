import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/questionaire/presentation/widgets/image_overlay_widget.dart';
import 'package:measureap/questionaire/presentation/widgets/questionnaire_text_widgets.dart';

import '../../../core/widgets/gaps.dart';

class IdentificationQuestionOptionCard extends StatelessWidget {
  final String answer;
  final String imageUrl;
  const IdentificationQuestionOptionCard(
      {super.key, required this.answer, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    print(imageUrl);
    return Column(
      children: [
        const Divider(
          height: 1,
        ),
        const LargeGap(),
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      showImageOverlay(context, imageUrl);
                    },
                    child: Container(
                      height: 67,
                      width: 67,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(imageUrl),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.disabledColor)),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  IdentificationQuestionAnswerTextWidget(title: answer)
                ],
              ),
              const CustomSwitch()
            ],
          ),
        ),
      ],
    );
  }
}

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: isSelected,
      onChanged: (val) {
        setState(() {
          isSelected = val;
        });
      },
      activeColor: isSelected
          ? AppColors.assessmentCardBackgroundColor
          : AppColors.whiteColor,
      trackColor: !isSelected
          ? AppColors.disabledColor
          : AppColors.assessmentCardBackgroundColor,
    );
  }
}
