import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:measureap/feature/assessments/domain/entity/applicable_measures_entity.dart';
import 'package:measureap/feature/assessments/domain/entity/cognitive_status_entity.dart';
import 'package:measureap/feature/assessments/domain/entity/patient_entity.dart';
import '../../domain/entity/assessment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/repository/assessments_repository.dart';

part 'assessment_state.dart';

part 'assessment_cubit.freezed.dart';

class AssessmentCubit extends Cubit<AssessmentState> {
  final AssessmentRepository repository;
  AssessmentCubit(this.repository) : super(const AssessmentState()) {
    fetchRecentAssessment();
  }

  clearAssessmentModel() {
    emit(state.copyWith(
        cognitiveStatus: null,
        measures: null,
        patientName: null,
        cognitiveStatuses: [],
        patients: [],
        applicableMeasures: []));
  }

  setAssessmentModel(Assessment model) {
    clearAssessmentModel();
    emit(state.copyWith(
      cognitiveStatus: model.cognitiveStatus,
      measures: model.measures,
      patientName: model.patientName,
    ));
  }

  Future<void> fetchFirebaseData() async {
    clearAssessmentModel();
    try {
      final cognitiveStatusesList = await repository.fetchCognitiveStatuses();
      emit(state.copyWith(
        cognitiveStatuses: cognitiveStatusesList,
        applicableMeasures: [],
        patients: [],
      ));
    } catch (error) {
      print('Error fetching data from Firebase: $error');
    }
  }

  fetchApplicableMeasures() async {
    final firstCognitiveStatus = state.cognitiveStatuses.firstWhere(
        (cognitiveStatus) => cognitiveStatus.name == state.cognitiveStatus);
    final firstCognitiveStatusId =
        state.cognitiveStatuses.isNotEmpty ? firstCognitiveStatus.id : null;
    if (firstCognitiveStatusId != null) {
      try {
        final measuresList =
            await repository.fetchApplicableMeasures(firstCognitiveStatusId);
        emit(state.copyWith(
          applicableMeasures: measuresList,
          patientName: null,
          patients: [],
        ));
      } catch (error) {
        print('Error fetching applicable measures: $error');
      }
    }
  }

  fetchPatients() async {
    final firstCognitiveStatus = state.applicableMeasures.firstWhere(
        (cognitiveStatus) => cognitiveStatus.name == state.measures);
    final firstMeasureId =
        state.applicableMeasures.isNotEmpty ? firstCognitiveStatus.id : null;
    if (firstMeasureId != null) {
      try {
        final patientsList = await repository.fetchPatients(firstMeasureId);
        emit(state.copyWith(
          patients: patientsList,
        ));
      } catch (error) {
        print('Error fetching patients: $error');
      }
    }
  }

  void updateCognitiveStatus(String? status) {
    emit(state.copyWith(
      cognitiveStatus: status!,
      applicableMeasures: [],
      patients: [],
      measures: null,
      patientName: null,
    ));
    fetchApplicableMeasures();
  }

  void updateMeasures(String? measures) {
    emit(state.copyWith(measures: measures!));
    fetchPatients();
  }

  void updatePatientName(String? name) {
    emit(state.copyWith(patientName: name!));
  }

  bool get isButtonEnabled {
    return !(state.cognitiveStatus != null &&
        state.measures != null &&
        state.patientName != null);
  }

  fetchRecentAssessment() async {
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('recent_assessments')
          .get();
      final recentAssessments = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return Assessment(
          cognitiveStatus: data['cognitiveStatus'],
          measures: data['measures'],
          patientName: data['patientName'],
        );
      }).toList();
      emit(state.copyWith(
        recentAssessments: recentAssessments,
      ));
    } catch (error) {
      print('Failed to fetch questions: $error');
    }
  }
}
