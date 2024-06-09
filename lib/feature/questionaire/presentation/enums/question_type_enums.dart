enum QuestionType {
  correctIncorrect,
  multipleCorrectIncorrect,
  recall,
  identification,
}

QuestionType getQuestionTypeFromString(String type) {
  switch (type) {
    case 'correctIncorrect':
      return QuestionType.correctIncorrect;
    case 'multipleCorrectIncorrect':
      return QuestionType.multipleCorrectIncorrect;
    case 'recall':
      return QuestionType.recall;
    case 'identification':
      return QuestionType.identification;
    default:
      throw Exception('Unknown question type');
  }
}