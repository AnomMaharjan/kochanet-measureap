import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureap/core/constants/string_constants.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/styles_manager.dart';
import 'package:measureap/questionaire/presentation/widgets/custom_percent_indicator.dart';
import 'package:measureap/questionaire/presentation/widgets/questionnaire_text_widgets.dart';
import '../../../core/widgets/gaps.dart';
import '../questionnaire_bloc.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  bool _showAll = false;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      const SizedBox(
        height: 40,
      ),
      const TitleTextWidget(title: StringConstants.confirmResult),
      const MediumGap(),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: AppColors.disabledColor)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SizedBox(
                height: 135,
                width: 135,
                child: BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                  builder: (context, state) {
                    if (state.userAnswers == null ||
                        state.userAnswers!.isEmpty) {
                      return const Center(child: Text('No results available'));
                    }
                    // Calculate the total correct answers
                    int totalCorrectAnswers = state.userAnswers!
                        .where((answer) => answer['status'] == 'correct')
                        .length;
                    int totalQuestions = state.userAnswers!.length;
                    double percent = totalCorrectAnswers / totalQuestions;
                    return SizedBox(
                      height: 135,
                      width: 135,
                      child: CustomPercentIndicator(
                        percent: percent,
                        totalCorrectAnswers: totalCorrectAnswers,
                        totalQuestions: totalQuestions,
                        progressColor: AppColors.percentIndicatorColor,
                        backgroundColor: Colors.grey.shade300,
                        centerTextStyle:
                            getBoldStyle(color: Colors.black, fontSize: 36),
                      ),
                    );
                  },
                ),
              ),
            ),
            const Divider(
              height: 2,
            ),
            BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
              builder: (context, state) {
                if (state.userAnswers == null || state.userAnswers!.isEmpty) {
                  return const Center(child: Text('No results available'));
                }
                final displayResults = _showAll
                    ? state.userAnswers!
                    : state.userAnswers!.take(3).toList();
                return ListView.builder(
                  itemBuilder: (ctx, index) {
                    if (index == displayResults.length) {
                      return TextButton(
                        onPressed: () {
                          setState(() {
                            _showAll = true;
                          });
                        },
                        child: const Text(
                          'Show all',
                          style: TextStyle(color: Colors.orange),
                        ),
                      );
                    }
                    final answer = state.userAnswers![index];
                    return ResultCard(
                      question: 'Question ${index + 1}',
                      answer: answer['status'] == 'correct'
                          ? 'Correct'
                          : 'Incorrect',
                    );
                  },
                  //comment
                  //show all option
                  itemCount: displayResults.length +
                      (state.userAnswers!.length > 3 && !_showAll ? 1 : 0),
                  shrinkWrap: true,
                );
              },
            )
          ],
        ),
      ),
      // Row(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     Flexible(
      //       flex: 1,
      //       child: PreviousButton(
      //         onPressed: () {},
      //         buttonText: "Back",
      //       ),
      //     ),
      //     const SizedBox(
      //       width: 20,
      //     ),
      //     Flexible(
      //         flex: 1,
      //         child: PrimaryButton(
      //           onPressed: () {},
      //           text: "Print",
      //         )),
      //   ],
      // )
    ]);
  }
}

class ResultCard extends StatelessWidget {
  final String question, answer;

  const ResultCard({super.key, required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            question,
            style: getMediumtyle(color: AppColors.titleTextColor, fontSize: 14),
          ),
          Text(
            answer,
            style: getBoldStyle(
              color: answer == "Correct"
                  ? AppColors.correctAnswerColor
                  : AppColors.incorrectAnswerColor,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
