import 'package:flutter/material.dart';

class ExitAssessmentDialog extends StatelessWidget {
  const ExitAssessmentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Exit Assessment'),
      content: const Text(
          'You will have to restart the assessment if you exit. Are you sure you want to exit the assessment?'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .pop(false); // Return false when "No" is pressed
          },
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
            Navigator.of(context)
                .pop(true); // Return true when "Yes" is pressed
          },
          child: const Text('Yes'),
        ),
      ],
    );
  }
}
