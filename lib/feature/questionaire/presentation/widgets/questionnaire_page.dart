import 'package:flutter/material.dart';
import 'package:measureap/feature/questionaire/presentation/widgets/questionnaire_buttons.dart';

import '../../domain/entity/question.dart';

class QuestionPage extends StatelessWidget {
  final Question question;
  final int questionIndex;
  final int? selectedOption;
  final Function(int questionIndex, int selectedOption) onSelectOption;

  QuestionPage({
    required this.question,
    required this.questionIndex,
    required this.selectedOption,
    required this.onSelectOption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            question.text ?? '',
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          if(question.options != null)...[
            ...question.options!.asMap().entries.map((entry) {
              int idx = entry.key;
              String option = entry.value;
              return ElevatedButton(
                onPressed: () {
                  onSelectOption(questionIndex, idx);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedOption == idx ? Colors.green : Colors.blue,
                ),
                child: Text(option),
              );
            }).toList(),
          ],

         QuestionnaireButtons(),
        ],
      ),
    );
  }
}
