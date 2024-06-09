import 'package:flutter/material.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/styles_manager.dart';

// SizedBox(
//             height: 200,
//             width: 200,
//             child: CustomPercentIndicator(
//               percent: 12 / 18,
//               radius: 100.0,
//               lineWidth: 20.0,
//               progressColor: Colors.greenAccent,
//               backgroundColor: Colors.grey.shade300,
//               centerTextStyle: const TextStyle(
//                   fontSize: 22.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black),
//             ),
//           ),

class CustomPercentIndicator extends StatelessWidget {
  final double percent;
  final double radius;
  final double lineWidth;
  final Color progressColor;
  final int totalQuestions;
  final int totalCorrectAnswers;
  final Color backgroundColor;
  final TextStyle centerTextStyle;

  const CustomPercentIndicator({
    super.key,
    required this.percent,
    this.radius = 100,
    this.lineWidth = 20.0,
    required this.progressColor,
    required this.totalQuestions,
    required this.totalCorrectAnswers,
    required this.backgroundColor,
    required this.centerTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(radius * 2, radius * 2),
      painter: _CustomPercentIndicatorPainter(
        percent: percent,
        lineWidth: lineWidth,
        progressColor: progressColor,
        backgroundColor: backgroundColor,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$totalCorrectAnswers',
              style: centerTextStyle,
            ),
            Text(
              "/$totalQuestions",
              style: TextStyle(
                  color: AppColors.descriptionTextColor,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  height: 0.2),
            )
          ],
        ),
      ),
    );
  }
}

class _CustomPercentIndicatorPainter extends CustomPainter {
  final double percent;
  final double lineWidth;
  final Color progressColor;
  final Color backgroundColor;

  _CustomPercentIndicatorPainter({
    required this.percent,
    required this.lineWidth,
    required this.progressColor,
    required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    Paint progressPaint = Paint()
      ..color = progressColor
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = (size.width / 2) - (lineWidth / 2);

    canvas.drawCircle(center, radius, backgroundPaint);

    double sweepAngle = 2 * 3.141592653589793 * percent;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -3.141592653589793 / 2,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
