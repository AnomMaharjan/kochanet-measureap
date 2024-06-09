import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../questionnaire_bloc.dart';

class PageviewIndicator extends StatelessWidget {
  final int index;
  final int screenNumbers;
  final int currentPage;
  const PageviewIndicator(
      {super.key,
      required this.index,
      required this.screenNumbers,
      required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
      builder: (context, state) {
        var bloc = context.read<QuestionnaireBloc>();
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(screenNumbers,
              (index) => _buildIndicator(index, state.currentPage)),
        );
      },
    );
  }

  Widget _buildIndicator(int index, int currentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 40,
      height: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: currentPage >= index ? Colors.black : Colors.grey,
      ),
    );
  }
}
