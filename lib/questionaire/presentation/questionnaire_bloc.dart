import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../core/firebase/firebase_service.dart';
import '../domain/entity/question.dart';

part 'questionnaire_event.dart';
part 'questionnaire_state.dart';

part 'questionnaire_bloc.freezed.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  final FirestoreService _firestoreService;
  QuestionnaireBloc(this._firestoreService)
      : super(const QuestionnaireState(
          questions: [],
          currentPage: 0,
        )) {
    on<FetchQuestions>(_onFetchQuestions);
    on<NextQuestion>(_onNextQuestion);
    on<AnswerQuestion>(_onAnswerQuestion);
    on<PreviousQuestion>(_onPreviousQuestion);
  }

  Future<void> _onFetchQuestions(
      FetchQuestions event, Emitter<QuestionnaireState> emit) async {
    // emit(state.copyWith(isLoading: true));
    try {
      final querySnapshot =
          await FirebaseFirestore.instance.collection('questions').get();
      final questions = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return Question(
            questionType: data['questionType'],
            description: data['description'],
            text: data['question'],
            options: data['options'] != null
                ? List<String>.from(data['options'])
                : null,
            correctOption: data['correctOptions'] != null
                ? List<int>.from(data['correctOptions'])
                : null,
            images: data['images'] != null
                ? List<String>.from(data['images'])
                : null);
      }).toList();
      emit(state.copyWith(
        questions: questions,
        userAnswers: List<Map<String, dynamic>>.filled(questions.length, {}),
      ));
    } catch (error) {
      // emit(state.copyWith(isLoading: false));
      print('Failed to fetch questions: $error');
    }
  }

  Future<void> _onAnswerQuestion(
      AnswerQuestion event, Emitter<QuestionnaireState> emit) async {
    final updatedAnswers = List<Map<String, dynamic>>.from(state.userAnswers!);
    final isCorrect = state.questions[event.questionIndex].correctOption ==
        event.selectedOption;
    final status = isCorrect ? "correct" : "incorrect";

    updatedAnswers[event.questionIndex] = {
      "questionIndex": event.questionIndex,
      "status": status,
    };
    if (state.currentPage == state.questions.length - 1) {
      await _firestoreService.saveAllUserAnswers('John', updatedAnswers);
    }

    emit(state.copyWith(userAnswers: updatedAnswers));
  }

  void _onNextQuestion(NextQuestion event, Emitter<QuestionnaireState> emit) {
    if (state.currentPage < state.questions.length) {
      emit(state.copyWith(currentPage: state.currentPage + 1));
    }
  }

  void _onPreviousQuestion(
      PreviousQuestion event, Emitter<QuestionnaireState> emit) {
    if (state.currentPage > 0) {
      emit(state.copyWith(currentPage: state.currentPage - 1));
    }
  }
}
