part of 'questionnaire_bloc.dart';

@freezed
abstract class QuestionnaireEvent with _$QuestionnaireEvent {
  const factory QuestionnaireEvent.nextQuestion() = NextQuestion;
  const factory QuestionnaireEvent.previousQuestion() = PreviousQuestion;
  const factory QuestionnaireEvent.fetchQuestionFromFirebase() = FetchQuestions;
  const factory QuestionnaireEvent.answerQuestion(
      int questionIndex, List<int> selectedOption) = AnswerQuestion;
}
