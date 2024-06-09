import 'package:flutter/material.dart';
import 'package:measureap/core/theme/styles_manager.dart';
import '../theme/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool iconRequired;
  final String text;
  final double height, width;
  final Color color;
  final bool isDisabled;
  const PrimaryButton(
      {super.key,
      this.onPressed,
      this.iconRequired = false,
      required this.text,
      this.height = 60,
      this.width = double.infinity,
      this.color = Colors.black,
      this.isDisabled = false});

  @override
  Widget build(BuildContext context) {
    return isDisabled
        ? MaterialButton(
            minWidth: width,
            height: 60,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            disabledColor: Colors.grey,
            color: Colors.grey,
            onPressed: onPressed,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  style:
                      getBoldStyle(color: AppColors.whiteColor, fontSize: 18),
                ),
              ],
            ),
          )
        : GradientShadowContainer(
            child: MaterialButton(
              minWidth: width,
              height: 60,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              color: color,
              onPressed: onPressed,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    text,
                    style:
                        getBoldStyle(color: AppColors.whiteColor, fontSize: 18),
                  ),
                ],
              ),
            ),
          );
  }
}

class GradientShadowContainer extends StatelessWidget {
  final Widget child;

  const GradientShadowContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomPaint(
            painter: GradientShadowPainter(),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 0),
              width: double.infinity,
              height: 30,
            ),
          ),
        ),
        child,
      ],
    );
  }
}

class GradientShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final RRect rrect =
        RRect.fromRectAndRadius(rect, const Radius.circular(60.0));

    final Paint paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color(0xFF0753EB),
          Color(0xFFDE0000),
          Color(0xFFF88A00),
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.bottomRight,
      ).createShader(rect)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12.0);

    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
