import 'package:flutter/material.dart';
import 'package:measureap/questionaire/domain/entity/question.dart';
import 'package:measureap/questionaire/presentation/widgets/correct_incorrect_option_card.dart';
import 'package:measureap/questionaire/presentation/widgets/questionnaire_text_widgets.dart';

import '../../../core/widgets/gaps.dart';

class CorrectIncorrectPageview extends StatefulWidget {
  final Question question;

  const CorrectIncorrectPageview({
    super.key,
   required this.question
  });

  @override
  State<CorrectIncorrectPageview> createState() =>
      _CorrectIncorrectPageviewState();
}

class _CorrectIncorrectPageviewState extends State<CorrectIncorrectPageview> {
  
  final ValueNotifier<int?> _selectedOption = ValueNotifier<int?>(null);

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
        ValueListenableBuilder<int?>(
          valueListenable: _selectedOption,
          builder: (context, selectedIndex, _) => ListView.builder(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CorrectIncorrectOption(
                answer: options[index],
                onSelect: () {
                  _selectedOption.value =
                      _selectedOption.value == index ? -1 : index;
                },
                isSelected: selectedIndex == index,
              ),
            ),
            itemCount: options.length,
          ),
        ),
      ],
    );
  }
}