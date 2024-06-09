import 'package:flutter/material.dart';
import 'package:measureap/core/constants/string_constants.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/styles_manager.dart';
import 'package:measureap/feature/home/presentation/screens/widgets/recent_history_card.dart';

class RecentHistoryListview extends StatelessWidget {
  const RecentHistoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              StringConstants.recentHistory,
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
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (ctx, int) => const Column(
            children: [
              RecentHistoryCard(),
              SizedBox(
                height: 10,
              )
            ],
          ),
          itemCount: 3,
          shrinkWrap: true,
        )
      ],
    );
  }
}
