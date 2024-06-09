import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureap/feature/assessments/presentation/bloc/assessment_cubit.dart';
import 'package:measureap/feature/assessments/presentation/screens/new_assessment_screen.dart';
import 'package:measureap/feature/home/presentation/screens/widgets/assessments_card.dart';

import '../../../../../core/constants/string_constants.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/styles_manager.dart';

class AssessmentsHistoryList extends StatelessWidget {
  const AssessmentsHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics:
          const NeverScrollableScrollPhysics(parent: ClampingScrollPhysics()),
      shrinkWrap: true,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              StringConstants.recentAssessments,
              style:
                  getBoldStyle(color: AppColors.titleTextColor, fontSize: 18),
            ),
            Row(
              children: [
                Text(
                  StringConstants.seeMore,
                  style: getBoldStyle(
                      color: AppColors.subtitleTextColor, fontSize: 12),
                ),
                const SizedBox(
                  width: 6,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.keyboard_arrow_right),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        BlocBuilder<AssessmentCubit, AssessmentState>(
            builder: (context, state) {
          if (state.recentAssessments.isNotEmpty) {
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, int index) => Column(
                children: [
                  AssessmentsCard(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NewAssessmentScreen(
                              assessment: state.recentAssessments[index],
                            ),
                          ),
                        );
                      },
                      recentAssessment: state.recentAssessments[index]),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
              itemCount: state.recentAssessments.length,
              shrinkWrap: true,
            );
          } else {
            return const SizedBox.shrink();
          }
        }),
      ],
    );
  }
}
