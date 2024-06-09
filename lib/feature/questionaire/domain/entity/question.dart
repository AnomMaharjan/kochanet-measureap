class Question {
  final String? text;
  final String? description;
  final List<String>? options;
  final List<int>? correctOption;
  final String questionType;
  final List<String>? images;

  Question(
      {this.text,
      this.description,
      this.options,
      this.correctOption,
      required this.questionType,
      this.images});
}
