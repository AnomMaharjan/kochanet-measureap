import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:measureap/feature/assessments/domain/entity/applicable_measures_entity.dart';
import 'package:measureap/feature/assessments/domain/entity/cognitive_status_entity.dart';
import 'package:measureap/feature/assessments/domain/entity/patient_entity.dart';
import '../../domain/entity/assessment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_state.dart';

part 'assessment_cubit.freezed.dart';

class AssessmentCubit extends Cubit<AssessmentState> {
  AssessmentCubit() : super(const AssessmentState()) {
    fetchRecentAssessment();
  }

  setAssessmentModel(Assessment model) {
    updateCognitiveStatus(model.cognitiveStatus);
    updateMeasures(model.measures);
    updatePatientName(model.patientName);
  }

  void updateCognitiveStatus(String? status) {
    emit(state.copyWith(cognitiveStatus: status!));
  }

  void updateMeasures(String? measures) {
    emit(state.copyWith(measures: measures!));
  }

  void updatePatientName(String? name) {
    emit(state.copyWith(patientName: name!));
  }

  bool get isButtonEnabled {
    return state.cognitiveStatus.isNotEmpty == true &&
        state.measures.isNotEmpty == true &&
        state.patientName.isNotEmpty == true;
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

  fetchAssessments() async {
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

  fetchCognitiveStatus() async {
    try {
      final querySnapshot =
          await FirebaseFirestore.instance.collection('cognitive_status').get();
      final cognitiveStatuses = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return CognitiveStatus(id: data['id'], name: data['name']);
      }).toList();
      emit(state.copyWith(
        cognitiveStatuses: cognitiveStatuses,
      ));
    } catch (error) {
      print('Failed to fetch questions: $error');
    }
  }

  fetchApplicableMeasures() async {
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('applicable_measures')
          .get();
      final applicableMeasures = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return ApplicableMeasures(
            id: data['id'],
            name: data['name'],
            cognitiveStatusId: data['cognitiveStatusId']);
      }).toList();
      emit(state.copyWith(
        applicableMeasures: applicableMeasures,
      ));
    } catch (error) {
      print('Failed to fetch questions: $error');
    }
  }

 fetchPatient() async {
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('patients')
          .get();
      final patients = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return Patient(
            id: data['id'],
            name: data['name'],
            applicableMeasureId: data['applicableMeasureId'],
            address: data['address'],
            age: data['age'],
            phoneNumber: data['phoneNumber'],
            gender: data['gender']
            );
      }).toList();
      emit(state.copyWith(
        patients: patients,
      ));
    } catch (error) {
      print('Failed to fetch questions: $error');
    }
  }

}
