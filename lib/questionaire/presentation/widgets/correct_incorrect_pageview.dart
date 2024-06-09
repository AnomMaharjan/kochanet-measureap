import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureap/questionaire/domain/entity/question.dart';
import 'package:measureap/questionaire/presentation/widgets/correct_incorrect_option_card.dart';
import 'package:measureap/questionaire/presentation/widgets/questionnaire_text_widgets.dart';

import '../../../core/widgets/gaps.dart';
import '../questionnaire_bloc.dart';

class CorrectIncorrectPageview extends StatefulWidget {
  final Question question;

  const CorrectIncorrectPageview({Key? key, required this.question})
      : super(key: key);

  @override
  State<CorrectIncorrectPageview> createState() =>
      _CorrectIncorrectPageviewState();
}

class _CorrectIncorrectPageviewState extends State<CorrectIncorrectPageview> {
  final ValueNotifier<int?> _selectedOption = ValueNotifier<int?>(null);

  @override
  void initState() {
    super.initState();
    // Initialize selected options from the state if it exists
    final userAnswers = context.read<QuestionnaireBloc>().state.userAnswers;
    if (userAnswers != null &&
        userAnswers.isNotEmpty &&
        userAnswers[context.read<QuestionnaireBloc>().state.currentPage]
            .isNotEmpty) {
      final selectedOptions =
          userAnswers[context.read<QuestionnaireBloc>().state.currentPage]
              ['selectedOptions'] as List<int>?;
      if (selectedOptions != null && selectedOptions.isNotEmpty) {
        _selectedOption.value = selectedOptions.first;
      }
    }
  }

  @override
  void dispose() {
    _selectedOption.dispose();
    super.dispose();
  }

  final options = ['Correct', 'Incorrect'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleTextWidget(
          title: widget.question.text!,
        ),
        const MediumGap(),
        DescriptionTextWidget(
          description: widget.question.description!,
          textAlign: TextAlign.center,
        ),
        const LargeGap(),
        BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
          builder: (context, state) {
            final cubit = context.read<QuestionnaireBloc>();
            return ListView.builder(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => ValueListenableBuilder<int?>(
                valueListenable: _selectedOption,
                builder: (context, selectedValue, _) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: CorrectIncorrectOption(
                      answer: options[index],
                      onSelect: () {
                        _selectedOption.value = index; // Update selected option
                        cubit.add(AnswerQuestion(
                            context.read<QuestionnaireBloc>().state.currentPage,
                            [index])); // Pass selected option index to the bloc
                      },
                      isSelected: selectedValue ==
                          index, // Check if current option is selected
                    ),
                  );
                },
              ),
              itemCount: options.length,
            );
          },
        ),
      ],
    );
  }
}
