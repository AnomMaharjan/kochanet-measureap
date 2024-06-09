import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:measureap/core/constants/icons_manager.dart';
import 'package:measureap/core/constants/image_constants.dart';
import 'package:measureap/core/extensions/string_extension.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles_manager.dart';

class AssessmensQuestionnaireScreen extends StatelessWidget {
  const AssessmensQuestionnaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: Text(
          StringConstants.assessment.capitalizeFirst(),
          style: getBoldStyle(color: AppColors.titleTextColor, fontSize: 16),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(IconsManager.more),
          )
        ],
      ),
    );
  }
}
