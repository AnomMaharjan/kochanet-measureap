import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureap/core/constants/string_constants.dart';
import 'package:measureap/core/routes/routes.dart';
import 'package:measureap/core/widgets/appbar.dart';
import 'package:measureap/core/widgets/custom_button.dart';
import 'package:measureap/feature/assessments/presentation/bloc/assessment_cubit.dart';
import 'package:measureap/feature/home/presentation/screens/widgets/assessments_history_list.dart';
import 'package:measureap/feature/home/presentation/screens/widgets/recent_history_listview.dart';

import '../../../../core/widgets/gaps.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        children: [
          // const RecentHistoryCard(),
          const RecentHistoryListview(),
          const LargeGap(),
          const AssessmentsHistoryList(),
          const LargeGap(),
          PrimaryButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.newAssessment);
              },
              text: StringConstants.newAssessment),
          const MediumGap()
        ],
      ),
    );
  }
}

class CustomAnimatedButton extends StatefulWidget {
  final String? title;
  final Function()? onPressed;
  final Color? buttonColor;
  final Color? titleColor;
  final bool enableButton;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? fontSize;
  final Widget? child;
  final double? height;

  const CustomAnimatedButton({
    super.key,
    required this.title,
    this.onPressed,
    this.buttonColor = Colors.yellow,
    this.titleColor = Colors.black,
    this.enableButton = false,
    this.fontWeight = FontWeight.w500,
    this.fontFamily,
    this.fontSize,
    this.child,
    this.height,
  });

  @override
  _CustomAnimatedButtonState createState() => _CustomAnimatedButtonState();
}

class _CustomAnimatedButtonState extends State<CustomAnimatedButton> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed!,
      onTapDown: (_) {
        setState(() {
          isTapped = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isTapped = false;
        });
      },
      onTapCancel: () {
        setState(() {
          isTapped = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        child: Transform.translate(
          offset: Offset(0, isTapped ? 1.0 : 0.0),
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: widget.height ?? 70,
            decoration: BoxDecoration(
              color: widget.enableButton ? widget.buttonColor : Colors.yellow,
              borderRadius: BorderRadius.circular(10.88),
              border: Border(
                left: const BorderSide(width: 2, color: Colors.black),
                top: const BorderSide(width: 2, color: Colors.black),
                right: const BorderSide(width: 2, color: Colors.black),
                bottom: isTapped
                    ? const BorderSide(
                        width: 5,
                        color: Colors.transparent,
                        style: BorderStyle.none,
                      )
                    : const BorderSide(
                        width: 5,
                        color: Colors.black,
                      ),
              ),
              gradient: isTapped
                  ? const LinearGradient(
                      colors: [Colors.red, Colors.orange],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                  : null,
            ),
            child: widget.child ??
                Text(
                  widget.title ?? 'Button',
                  style: TextStyle(
                    color: widget.titleColor,
                    fontSize: widget.fontSize ?? 16,
                    fontWeight: widget.fontWeight,
                    fontFamily: widget.fontFamily,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
