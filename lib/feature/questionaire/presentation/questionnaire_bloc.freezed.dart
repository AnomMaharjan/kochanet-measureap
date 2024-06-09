// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionnaireEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
    required TResult Function() fetchQuestionFromFirebase,
    required TResult Function(int questionIndex, List<int> selectedOption)
        answerQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
    TResult? Function()? fetchQuestionFromFirebase,
    TResult? Function(int questionIndex, List<int> selectedOption)?
        answerQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    TResult Function()? fetchQuestionFromFirebase,
    TResult Function(int questionIndex, List<int> selectedOption)?
        answerQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextQuestion value) nextQuestion,
    required TResult Function(PreviousQuestion value) previousQuestion,
    required TResult Function(FetchQuestions value) fetchQuestionFromFirebase,
    required TResult Function(AnswerQuestion value) answerQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextQuestion value)? nextQuestion,
    TResult? Function(PreviousQuestion value)? previousQuestion,
    TResult? Function(FetchQuestions value)? fetchQuestionFromFirebase,
    TResult? Function(AnswerQuestion value)? answerQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(PreviousQuestion value)? previousQuestion,
    TResult Function(FetchQuestions value)? fetchQuestionFromFirebase,
    TResult Function(AnswerQuestion value)? answerQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireEventCopyWith<$Res> {
  factory $QuestionnaireEventCopyWith(
          QuestionnaireEvent value, $Res Function(QuestionnaireEvent) then) =
      _$QuestionnaireEventCopyWithImpl<$Res, QuestionnaireEvent>;
}

/// @nodoc
class _$QuestionnaireEventCopyWithImpl<$Res, $Val extends QuestionnaireEvent>
    implements $QuestionnaireEventCopyWith<$Res> {
  _$QuestionnaireEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NextQuestionImplCopyWith<$Res> {
  factory _$$NextQuestionImplCopyWith(
          _$NextQuestionImpl value, $Res Function(_$NextQuestionImpl) then) =
      __$$NextQuestionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextQuestionImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$NextQuestionImpl>
    implements _$$NextQuestionImplCopyWith<$Res> {
  __$$NextQuestionImplCopyWithImpl(
      _$NextQuestionImpl _value, $Res Function(_$NextQuestionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextQuestionImpl implements NextQuestion {
  const _$NextQuestionImpl();

  @override
  String toString() {
    return 'QuestionnaireEvent.nextQuestion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextQuestionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
    required TResult Function() fetchQuestionFromFirebase,
    required TResult Function(int questionIndex, List<int> selectedOption)
        answerQuestion,
  }) {
    return nextQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
    TResult? Function()? fetchQuestionFromFirebase,
    TResult? Function(int questionIndex, List<int> selectedOption)?
        answerQuestion,
  }) {
    return nextQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    TResult Function()? fetchQuestionFromFirebase,
    TResult Function(int questionIndex, List<int> selectedOption)?
        answerQuestion,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextQuestion value) nextQuestion,
    required TResult Function(PreviousQuestion value) previousQuestion,
    required TResult Function(FetchQuestions value) fetchQuestionFromFirebase,
    required TResult Function(AnswerQuestion value) answerQuestion,
  }) {
    return nextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextQuestion value)? nextQuestion,
    TResult? Function(PreviousQuestion value)? previousQuestion,
    TResult? Function(FetchQuestions value)? fetchQuestionFromFirebase,
    TResult? Function(AnswerQuestion value)? answerQuestion,
  }) {
    return nextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(PreviousQuestion value)? previousQuestion,
    TResult Function(FetchQuestions value)? fetchQuestionFromFirebase,
    TResult Function(AnswerQuestion value)? answerQuestion,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion(this);
    }
    return orElse();
  }
}

abstract class NextQuestion implements QuestionnaireEvent {
  const factory NextQuestion() = _$NextQuestionImpl;
}

/// @nodoc
abstract class _$$PreviousQuestionImplCopyWith<$Res> {
  factory _$$PreviousQuestionImplCopyWith(_$PreviousQuestionImpl value,
          $Res Function(_$PreviousQuestionImpl) then) =
      __$$PreviousQuestionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviousQuestionImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$PreviousQuestionImpl>
    implements _$$PreviousQuestionImplCopyWith<$Res> {
  __$$PreviousQuestionImplCopyWithImpl(_$PreviousQuestionImpl _value,
      $Res Function(_$PreviousQuestionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreviousQuestionImpl implements PreviousQuestion {
  const _$PreviousQuestionImpl();

  @override
  String toString() {
    return 'QuestionnaireEvent.previousQuestion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreviousQuestionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
    required TResult Function() fetchQuestionFromFirebase,
    required TResult Function(int questionIndex, List<int> selectedOption)
        answerQuestion,
  }) {
    return previousQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
    TResult? Function()? fetchQuestionFromFirebase,
    TResult? Function(int questionIndex, List<int> selectedOption)?
        answerQuestion,
  }) {
    return previousQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    TResult Function()? fetchQuestionFromFirebase,
    TResult Function(int questionIndex, List<int> selectedOption)?
        answerQuestion,
    required TResult orElse(),
  }) {
    if (previousQuestion != null) {
      return previousQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextQuestion value) nextQuestion,
    required TResult Function(PreviousQuestion value) previousQuestion,
    required TResult Function(FetchQuestions value) fetchQuestionFromFirebase,
    required TResult Function(AnswerQuestion value) answerQuestion,
  }) {
    return previousQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextQuestion value)? nextQuestion,
    TResult? Function(PreviousQuestion value)? previousQuestion,
    TResult? Function(FetchQuestions value)? fetchQuestionFromFirebase,
    TResult? Function(AnswerQuestion value)? answerQuestion,
  }) {
    return previousQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(PreviousQuestion value)? previousQuestion,
    TResult Function(FetchQuestions value)? fetchQuestionFromFirebase,
    TResult Function(AnswerQuestion value)? answerQuestion,
    required TResult orElse(),
  }) {
    if (previousQuestion != null) {
      return previousQuestion(this);
    }
    return orElse();
  }
}

abstract class PreviousQuestion implements QuestionnaireEvent {
  const factory PreviousQuestion() = _$PreviousQuestionImpl;
}

/// @nodoc
abstract class _$$FetchQuestionsImplCopyWith<$Res> {
  factory _$$FetchQuestionsImplCopyWith(_$FetchQuestionsImpl value,
          $Res Function(_$FetchQuestionsImpl) then) =
      __$$FetchQuestionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchQuestionsImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$FetchQuestionsImpl>
    implements _$$FetchQuestionsImplCopyWith<$Res> {
  __$$FetchQuestionsImplCopyWithImpl(
      _$FetchQuestionsImpl _value, $Res Function(_$FetchQuestionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchQuestionsImpl implements FetchQuestions {
  const _$FetchQuestionsImpl();

  @override
  String toString() {
    return 'QuestionnaireEvent.fetchQuestionFromFirebase()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchQuestionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
    required TResult Function() fetchQuestionFromFirebase,
    required TResult Function(int questionIndex, List<int> selectedOption)
        answerQuestion,
  }) {
    return fetchQuestionFromFirebase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
    TResult? Function()? fetchQuestionFromFirebase,
    TResult? Function(int questionIndex, List<int> selectedOption)?
        answerQuestion,
  }) {
    return fetchQuestionFromFirebase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    TResult Function()? fetchQuestionFromFirebase,
    TResult Function(int questionIndex, List<int> selectedOption)?
        answerQuestion,
    required TResult orElse(),
  }) {
    if (fetchQuestionFromFirebase != null) {
      return fetchQuestionFromFirebase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextQuestion value) nextQuestion,
    required TResult Function(PreviousQuestion value) previousQuestion,
    required TResult Function(FetchQuestions value) fetchQuestionFromFirebase,
    required TResult Function(AnswerQuestion value) answerQuestion,
  }) {
    return fetchQuestionFromFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextQuestion value)? nextQuestion,
    TResult? Function(PreviousQuestion value)? previousQuestion,
    TResult? Function(FetchQuestions value)? fetchQuestionFromFirebase,
    TResult? Function(AnswerQuestion value)? answerQuestion,
  }) {
    return fetchQuestionFromFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(PreviousQuestion value)? previousQuestion,
    TResult Function(FetchQuestions value)? fetchQuestionFromFirebase,
    TResult Function(AnswerQuestion value)? answerQuestion,
    required TResult orElse(),
  }) {
    if (fetchQuestionFromFirebase != null) {
      return fetchQuestionFromFirebase(this);
    }
    return orElse();
  }
}

abstract class FetchQuestions implements QuestionnaireEvent {
  const factory FetchQuestions() = _$FetchQuestionsImpl;
}

/// @nodoc
abstract class _$$AnswerQuestionImplCopyWith<$Res> {
  factory _$$AnswerQuestionImplCopyWith(_$AnswerQuestionImpl value,
          $Res Function(_$AnswerQuestionImpl) then) =
      __$$AnswerQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int questionIndex, List<int> selectedOption});
}

/// @nodoc
class __$$AnswerQuestionImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$AnswerQuestionImpl>
    implements _$$AnswerQuestionImplCopyWith<$Res> {
  __$$AnswerQuestionImplCopyWithImpl(
      _$AnswerQuestionImpl _value, $Res Function(_$AnswerQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionIndex = null,
    Object? selectedOption = null,
  }) {
    return _then(_$AnswerQuestionImpl(
      null == questionIndex
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == selectedOption
          ? _value._selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$AnswerQuestionImpl implements AnswerQuestion {
  const _$AnswerQuestionImpl(this.questionIndex, final List<int> selectedOption)
      : _selectedOption = selectedOption;

  @override
  final int questionIndex;
  final List<int> _selectedOption;
  @override
  List<int> get selectedOption {
    if (_selectedOption is EqualUnmodifiableListView) return _selectedOption;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedOption);
  }

  @override
  String toString() {
    return 'QuestionnaireEvent.answerQuestion(questionIndex: $questionIndex, selectedOption: $selectedOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerQuestionImpl &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex) &&
            const DeepCollectionEquality()
                .equals(other._selectedOption, _selectedOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionIndex,
      const DeepCollectionEquality().hash(_selectedOption));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerQuestionImplCopyWith<_$AnswerQuestionImpl> get copyWith =>
      __$$AnswerQuestionImplCopyWithImpl<_$AnswerQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
    required TResult Function() fetchQuestionFromFirebase,
    required TResult Function(int questionIndex, List<int> selectedOption)
        answerQuestion,
  }) {
    return answerQuestion(questionIndex, selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
    TResult? Function()? fetchQuestionFromFirebase,
    TResult? Function(int questionIndex, List<int> selectedOption)?
        answerQuestion,
  }) {
    return answerQuestion?.call(questionIndex, selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    TResult Function()? fetchQuestionFromFirebase,
    TResult Function(int questionIndex, List<int> selectedOption)?
        answerQuestion,
    required TResult orElse(),
  }) {
    if (answerQuestion != null) {
      return answerQuestion(questionIndex, selectedOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextQuestion value) nextQuestion,
    required TResult Function(PreviousQuestion value) previousQuestion,
    required TResult Function(FetchQuestions value) fetchQuestionFromFirebase,
    required TResult Function(AnswerQuestion value) answerQuestion,
  }) {
    return answerQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextQuestion value)? nextQuestion,
    TResult? Function(PreviousQuestion value)? previousQuestion,
    TResult? Function(FetchQuestions value)? fetchQuestionFromFirebase,
    TResult? Function(AnswerQuestion value)? answerQuestion,
  }) {
    return answerQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(PreviousQuestion value)? previousQuestion,
    TResult Function(FetchQuestions value)? fetchQuestionFromFirebase,
    TResult Function(AnswerQuestion value)? answerQuestion,
    required TResult orElse(),
  }) {
    if (answerQuestion != null) {
      return answerQuestion(this);
    }
    return orElse();
  }
}

abstract class AnswerQuestion implements QuestionnaireEvent {
  const factory AnswerQuestion(
          final int questionIndex, final List<int> selectedOption) =
      _$AnswerQuestionImpl;

  int get questionIndex;
  List<int> get selectedOption;
  @JsonKey(ignore: true)
  _$$AnswerQuestionImplCopyWith<_$AnswerQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionnaireState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get userAnswers =>
      throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionnaireStateCopyWith<QuestionnaireState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireStateCopyWith<$Res> {
  factory $QuestionnaireStateCopyWith(
          QuestionnaireState value, $Res Function(QuestionnaireState) then) =
      _$QuestionnaireStateCopyWithImpl<$Res, QuestionnaireState>;
  @useResult
  $Res call(
      {bool isLoading,
      int currentPage,
      List<Map<String, dynamic>>? userAnswers,
      List<Question> questions});
}

/// @nodoc
class _$QuestionnaireStateCopyWithImpl<$Res, $Val extends QuestionnaireState>
    implements $QuestionnaireStateCopyWith<$Res> {
  _$QuestionnaireStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? currentPage = null,
    Object? userAnswers = freezed,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      userAnswers: freezed == userAnswers
          ? _value.userAnswers
          : userAnswers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireStateImplCopyWith<$Res>
    implements $QuestionnaireStateCopyWith<$Res> {
  factory _$$QuestionnaireStateImplCopyWith(_$QuestionnaireStateImpl value,
          $Res Function(_$QuestionnaireStateImpl) then) =
      __$$QuestionnaireStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int currentPage,
      List<Map<String, dynamic>>? userAnswers,
      List<Question> questions});
}

/// @nodoc
class __$$QuestionnaireStateImplCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res, _$QuestionnaireStateImpl>
    implements _$$QuestionnaireStateImplCopyWith<$Res> {
  __$$QuestionnaireStateImplCopyWithImpl(_$QuestionnaireStateImpl _value,
      $Res Function(_$QuestionnaireStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? currentPage = null,
    Object? userAnswers = freezed,
    Object? questions = null,
  }) {
    return _then(_$QuestionnaireStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      userAnswers: freezed == userAnswers
          ? _value._userAnswers
          : userAnswers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$QuestionnaireStateImpl extends _QuestionnaireState {
  const _$QuestionnaireStateImpl(
      {this.isLoading = false,
      this.currentPage = 0,
      final List<Map<String, dynamic>>? userAnswers,
      final List<Question> questions = const []})
      : _userAnswers = userAnswers,
        _questions = questions,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int currentPage;
  final List<Map<String, dynamic>>? _userAnswers;
  @override
  List<Map<String, dynamic>>? get userAnswers {
    final value = _userAnswers;
    if (value == null) return null;
    if (_userAnswers is EqualUnmodifiableListView) return _userAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'QuestionnaireState(isLoading: $isLoading, currentPage: $currentPage, userAnswers: $userAnswers, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other._userAnswers, _userAnswers) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      currentPage,
      const DeepCollectionEquality().hash(_userAnswers),
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireStateImplCopyWith<_$QuestionnaireStateImpl> get copyWith =>
      __$$QuestionnaireStateImplCopyWithImpl<_$QuestionnaireStateImpl>(
          this, _$identity);
}

abstract class _QuestionnaireState extends QuestionnaireState {
  const factory _QuestionnaireState(
      {final bool isLoading,
      final int currentPage,
      final List<Map<String, dynamic>>? userAnswers,
      final List<Question> questions}) = _$QuestionnaireStateImpl;
  const _QuestionnaireState._() : super._();

  @override
  bool get isLoading;
  @override
  int get currentPage;
  @override
  List<Map<String, dynamic>>? get userAnswers;
  @override
  List<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$$QuestionnaireStateImplCopyWith<_$QuestionnaireStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
