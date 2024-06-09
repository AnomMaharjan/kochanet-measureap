import 'package:flutter/material.dart';
import 'package:measureap/core/constants/image_constants.dart';
import 'package:measureap/core/constants/string_constants.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/styles_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leadingWidth: 300,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipOval(
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  ImageConstants.appBarProfile,
                  width: preferredSize.height * 0.8,
                  height: preferredSize.height * 0.8,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    StringConstants.welcomeBack,
                    style: getMediumtyle(
                        color: AppColors.subtitleTextColor, fontSize: 12),
                  ),
                  Text(
                    "Dr.Johnson",
                    style: getBoldStyle(
                        color: AppColors.titleTextColor, fontSize: 16),
                  )
                ],
              )
            ],
          ),
        ),
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Monday"),
              Text(
                "16 June, 2024",
                style:
                    getBoldStyle(color: AppColors.titleTextColor, fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            width: 12,
          )
        ],
      ),
    );
  }
}
