import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/questionaire/presentation/widgets/image_overlay_widget.dart';
import 'package:measureap/questionaire/presentation/widgets/questionnaire_text_widgets.dart';

import '../../../core/widgets/gaps.dart';
import '../questionnaire_bloc.dart';

class CustomSwitch extends StatelessWidget {
  final bool isSelected;
  final Function(bool) onChanged;

  const CustomSwitch({
    Key? key,
    required this.isSelected,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: isSelected,
      onChanged: onChanged,
      activeColor: isSelected ? AppColors.assessmentCardBackgroundColor : AppColors.whiteColor,
      trackColor: !isSelected ? AppColors.disabledColor : AppColors.assessmentCardBackgroundColor,
    );
  }
}



class IdentificationQuestionOptionCard extends StatefulWidget {
  final String answer;
  final String imageUrl;
  final int index;

  const IdentificationQuestionOptionCard({
    Key? key,
    required this.answer,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);


  @override
  _IdentificationQuestionOptionCardState createState() =>
      _IdentificationQuestionOptionCardState();
}

class _IdentificationQuestionOptionCardState
    extends State<IdentificationQuestionOptionCard> {
  final ValueNotifier<List<int>> _selectedIndices =
  ValueNotifier<List<int>>([]);

  @override
  void initState() {
    super.initState();
    // Initialize the selected indices if available
    final userAnswers = context.read<QuestionnaireBloc>().state.userAnswers;
    if (userAnswers != null &&
        userAnswers.isNotEmpty &&
        userAnswers[context.read<QuestionnaireBloc>().state.currentPage]
            .isNotEmpty) {
      final selectedOptions =
          userAnswers[context.read<QuestionnaireBloc>().state.currentPage]
          ['selectedOptions'] as List<int>? ??
              [];
      _selectedIndices.value = selectedOptions;
    }
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
    // Emit AnswerQuestion event with updated selected indices
    context.read<QuestionnaireBloc>().add(AnswerQuestion(
      context.read<QuestionnaireBloc>().state.currentPage,
      _selectedIndices.value,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          height: 1,
        ),
        const LargeGap(),
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      showImageOverlay(context, widget.imageUrl);
                    },
                    child: Container(
                      height: 67,
                      width: 67,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.imageUrl),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.disabledColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  IdentificationQuestionAnswerTextWidget(title: widget.answer)
                ],
              ),
              CustomSwitch(
                isSelected: _selectedIndices.value.contains(widget.index),
                onChanged:(bool value) => _onSelect(widget.index),
              ),
            ],
          ),
        ),
      ],
    );
  }



  @override
  void dispose() {
    // Dispose the ValueNotifier
    _selectedIndices.dispose();
    super.dispose();
  }
}
