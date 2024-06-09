import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureap/feature/questionaire/presentation/widgets/multiple_correct_incorrect_option.dart';
import 'package:measureap/feature/questionaire/presentation/widgets/questionnaire_text_widgets.dart';

import '../../../../core/widgets/gaps.dart';
import '../../domain/entity/question.dart';
import '../questionnaire_bloc.dart';

class MultipleCorrectIncorrectPageview extends StatefulWidget {
  final Question question;
  const MultipleCorrectIncorrectPageview({Key? key, required this.question})
      : super(key: key);

  @override
  _MultipleCorrectIncorrectPageviewState createState() =>
      _MultipleCorrectIncorrectPageviewState();
}

class _MultipleCorrectIncorrectPageviewState
    extends State<MultipleCorrectIncorrectPageview> {
  final ValueNotifier<List<int>> _selectedIndices =
  ValueNotifier<List<int>>([]);

  @override
  void initState() {
    final userAnswers = context.read<QuestionnaireBloc>().state.userAnswers;
    if (userAnswers != null &&
        userAnswers.isNotEmpty &&
        userAnswers[context.read<QuestionnaireBloc>().state.currentPage]
            .isNotEmpty) {
      final selectedOptions =
      userAnswers[context.read<QuestionnaireBloc>().state.currentPage]
      ['selectedOptions'] as List<int>?;
      if (selectedOptions != null && selectedOptions.isNotEmpty) {
        _selectedIndices.value = selectedOptions;
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ExtraLargeGap(),
        TitleTextWidget(
          title: widget.question.text!,
        ),
        const MediumGap(),
        DescriptionTextWidget(
          description: widget.question.description!,
          textAlign: TextAlign.center,
        ),
        const LargeGap(),
        ValueListenableBuilder<List<int>>(
          valueListenable: _selectedIndices,
          builder: (context, selectedIndices, _) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (ctx, index) => Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: MultipleCorrectIncorrectOption(
                  answer: widget.question.options![index],
                  isSelected: selectedIndices.contains(index),
                  onSelect: () {
                    _onSelect(index);
                    context.read<QuestionnaireBloc>().add(AnswerQuestion(
                        context.read<QuestionnaireBloc>().state.currentPage,
                        _selectedIndices.value,
                        ));
                  },
                ),
              ),
              itemCount: widget.question.options!.length,
            );
          },
        ),
      ],
    );
  }

  void _onSelect(int index) {
    setState(() {
      if (_selectedIndices.value.contains(index)) {
        // If already selected, remove from selectedIndices
        _selectedIndices.value = _selectedIndices.value..remove(index);
      } else {
        // If not selected, add to selectedIndices
        _selectedIndices.value = _selectedIndices.value..add(index);
      }
    });
  }

  @override
  void dispose() {
    _selectedIndices.dispose();
    super.dispose();
  }
}
