import 'package:flutter/material.dart';

class OptionsWidget extends StatelessWidget {
  final String option;
  const OptionsWidget({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(option),
    );
  }
}
