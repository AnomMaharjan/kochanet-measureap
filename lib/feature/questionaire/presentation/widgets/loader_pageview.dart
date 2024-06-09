import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/styles_manager.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset('assets/lottie/loader.json'),
          Text("Loading assessments",
              style:
                  getBoldStyle(color: AppColors.titleTextColor, fontSize: 16)),
        ],
      ),
    );
  }
}
