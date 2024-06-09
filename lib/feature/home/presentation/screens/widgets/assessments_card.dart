import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:measureap/feature/assessments/domain/entity/assessment_entity.dart';

import '../../../../../core/constants/icons_manager.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/styles_manager.dart';
import 'dart:math' as math;

class AssessmentsCard extends StatelessWidget {
  final Assessment recentAssessment;
  final VoidCallback onTap;
  const AssessmentsCard(
      {super.key, required this.recentAssessment, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          // color: Colors.red,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 19,
                spreadRadius: 1,
                offset: const Offset(0, 10))
          ]),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color:
                    AppColors.assessmentCardBackgroundColor.withOpacity(0.12),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Text(
                    recentAssessment.cognitiveStatus,
                    style: getBoldStyle(
                        color: AppColors.assessmentCardTitleColor,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.assessmentCardTitleColor,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                      recentAssessment.measures,
                    style: getMediumtyle(
                        color: AppColors.assessmentCardTitleColor,
                        fontSize: 14),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: GestureDetector(
                onTap: onTap,
                child: SvgPicture.asset(
                  IconsManager.nextButton,
                  colorFilter: ColorFilter.mode(
                      AppColors.assessmentCardTitleColor, BlendMode.srcIn),

                  // color: AppColors.assessmentCardTitleColor,
                )),
          )
        ],
      ),
    );
  }
}
