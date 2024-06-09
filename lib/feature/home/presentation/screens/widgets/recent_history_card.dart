import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:measureap/core/constants/icons_manager.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/styles_manager.dart';

class RecentHistoryCard extends StatelessWidget {
  const RecentHistoryCard({super.key});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 3,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 5,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.assessmentTitleBackgroundColor
                          .withOpacity(0.12),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Z00.00",
                          style: getBoldStyle(
                              color: AppColors.assessmentTitleTextColor,
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
                            color: AppColors.assessmentTitleTextColor,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Physical Examination",
                          style: getMediumtyle(
                              color: AppColors.assessmentTitleTextColor,
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      IconsManager.nextButton,
                      colorFilter: ColorFilter.mode(
                          AppColors.assessmentTitleTextColor, BlendMode.srcIn),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Patient Name",
            style: getBoldStyle(color: AppColors.titleTextColor, fontSize: 18),
          ),
          const Flexible(
            flex: 2,
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 4,
                child: Row(
                  children: [
                    Text(
                      "Gender",
                      style: getBoldStyle(
                          color: AppColors.subtitleTextColor, fontSize: 14),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.subtitleTextColor,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "41 Years old",
                      style: getBoldStyle(
                          color: AppColors.subtitleTextColor, fontSize: 14),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.subtitleTextColor,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "84 kg",
                      style: getBoldStyle(
                          color: AppColors.subtitleTextColor, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Flexible(
                  flex: 2,
                  child: Text(
                    "01.03.2024",
                    style: getBoldStyle(
                        color: AppColors.subtitleTextColor, fontSize: 14),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
