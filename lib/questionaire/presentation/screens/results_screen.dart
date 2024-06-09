import 'package:flutter/material.dart';
import '../../domain/entity/question.dart';

class ResultsPage extends StatelessWidget {
  final List<Question> questions;
  final List<Map<String, dynamic>> userAnswers;

  ResultsPage({required this.questions, required this.userAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index];
          final userAnswer = userAnswers[index];
          final status = userAnswer["status"];

          return ListTile(
            title: Text(question.text!),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Status: $status'),
              ],
            ),
          );
        },
      ),
    );
  }
}
