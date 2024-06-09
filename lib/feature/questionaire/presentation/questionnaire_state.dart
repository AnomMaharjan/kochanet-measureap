part of 'questionnaire_bloc.dart';



@freezed
class QuestionnaireState with _$QuestionnaireState {
  const QuestionnaireState._();

  const factory QuestionnaireState(
      {
        @Default(false) bool isLoading,
        @Default(0) int currentPage,
        List<Map<String, dynamic>>? userAnswers,
      @Default([])  List<Question> questions}) = _QuestionnaireState;
}