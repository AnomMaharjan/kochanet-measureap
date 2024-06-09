import 'package:flutter/material.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/styles_manager.dart';
import 'package:measureap/core/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureap/questionaire/presentation/questionnaire_bloc.dart';

import '../../../core/routes/routes.dart';

class QuestionnaireButtons extends StatelessWidget {
  const QuestionnaireButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
        builder: (context, state) {
      var bloc = context.read<QuestionnaireBloc>();
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (state.currentPage > 0)
            Flexible(
              flex: 2,
              child: PreviousButton(
                onPressed: () {
                  if (state.currentPage == state.questions.length) {
                    bloc.add(const PreviousQuestion());

                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.dashboard);
                  } else {
                    bloc.add(const PreviousQuestion());
                  }
                },
                buttonText: state.currentPage == state.questions.length - 1 ||
                        state.currentPage == state.questions.length
                    ? 'Back'
                    : null,
              ),
            ),
          Flexible(
            flex: 5,
            child: _NextButton(
                title: state.currentPage == state.questions.length
                    ? 'Print'
                    : state.currentPage == state.questions.length - 1
                        ? 'Finish'
                        : 'Continue',
                onPressed: () {
                  if (state.currentPage == state.questions.length) {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.dashboard);
                  } else {
                    bloc.add(
                      AnswerQuestion(state.currentPage, [0, 1]),
                    );
                    bloc.add(
                      const NextQuestion(),
                    );
                  }
                }),
          )
        ],
      );
    });
  }
}

class PreviousButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? buttonText;

  const PreviousButton({super.key, required this.onPressed, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 60,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(70),
          side: BorderSide(color: AppColors.disabledColor, width: 2)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: AppColors.backgroundColor,
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          buttonText == null
              ? const Icon(Icons.arrow_back_ios)
              : Text(
                  buttonText!,
                  style: getBoldStyle(
                      color: AppColors.titleTextColor, fontSize: 18),
                )
        ],
      ),
    );
  }
}

class _NextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const _NextButton({required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(onPressed: onPressed, text: title);
  }
}
