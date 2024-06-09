import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:measureap/core/extensions/string_extension.dart';
import 'package:measureap/questionaire/presentation/enums/question_type_enums.dart';
import 'package:measureap/questionaire/presentation/screens/result_screen.dart';
import 'package:measureap/questionaire/presentation/screens/results_screen.dart';
import 'package:measureap/questionaire/presentation/widgets/correct_incorrect_pageview.dart';
import 'package:measureap/questionaire/presentation/widgets/correct_incorrect_option_card.dart';
import 'package:measureap/questionaire/presentation/widgets/identification_question_pageview.dart';
import 'package:measureap/questionaire/presentation/widgets/multiple_correct_incorrect_option.dart';
import 'package:measureap/questionaire/presentation/widgets/multiple_correct_incorrect_pageview.dart';
import 'package:measureap/questionaire/presentation/widgets/pageview_indicator.dart';
import 'package:measureap/questionaire/domain/entity/question.dart';
import 'package:measureap/questionaire/presentation/questionnaire_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:measureap/questionaire/presentation/widgets/recall_question_pageview.dart';
import '../../../../core/constants/icons_manager.dart';
import '../../../../core/constants/string_constants.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles_manager.dart';
import '../../../core/firebase/firebase_service.dart';
import '../../../core/widgets/gaps.dart';
import '../enums/question_type_enums.dart';
import '../widgets/questionnaire_buttons.dart';
import '../widgets/questionnaire_text_widgets.dart';

class QuestionnaireScreen extends StatelessWidget {
  const QuestionnaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<QuestionnaireBloc>(context).add(const FetchQuestions());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: Text(
          StringConstants.assessment.capitalizeFirst(),
          style: getBoldStyle(color: AppColors.titleTextColor, fontSize: 16),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(IconsManager.more),
          )
        ],
      ),
      body: const Column(
        children: [
          Expanded(child: QuestionnairePageView()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
            child: QuestionnaireButtons(),
          ),
        ],
      ),
      // const CustomLoader(),
    );
  }
}

class QuestionnairePageView extends StatelessWidget {
  const QuestionnairePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
        builder: (context, state) {
      return PageView.builder(
        controller: PageController(initialPage: state.currentPage),
        onPageChanged: (page) {
          // Handle page change if needed
        },
        itemCount: state.questions.length +
            1, //increased one page to show the result at the end.
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PageviewIndicator(
                      index: index,
                      screenNumbers: state.questions.length + 1,
                      currentPage: state.currentPage),
                  const LargeGap(),
                  state.currentPage == state.questions.length
                      ? const ResultScreen()
                      : _buildQuestionWidget(
                          state.questions[state.currentPage].questionType,
                          state.questions[state.currentPage]),
                ],
              ),
            ),
          );
        },
      );
    });
  }

  Widget _buildQuestionWidget(String questionType, Question question) {
    switch (getQuestionTypeFromString(questionType)) {
      case QuestionType.correctIncorrect:
        return CorrectIncorrectPageview(
          question: question,
        );
      case QuestionType.multipleCorrectIncorrect:
        return MultipleCorrectIncorrectPageview(
          question: question,
        );
      case QuestionType.recall:
        return const RecallQuestionPageview(); // Assume this widget exists
      case QuestionType.identification:
        return IdentificationQuestionPageview(
            question: question); // Assume this widget exists
      default:
        return Container();
    }
  }
}
