import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

Future<dynamic> showImageOverlay(BuildContext context, String url) {
  return showAdaptiveDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) => Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.fitWidth,
            ),
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.disabledColor)),
      ),
    ),
  );
}
